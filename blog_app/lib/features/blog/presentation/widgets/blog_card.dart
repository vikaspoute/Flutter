import 'package:blog_app/features/blog/domain/entities/blog.dart';
import 'package:blog_app/features/blog/presentation/pages/blog_viewer_page.dart';
import 'package:flutter/material.dart';

import '../../../../core/utils/calculate_reading_time.dart';

class BlogCard extends StatelessWidget {
  final Blog blog;
  final Color color;

  const BlogCard({
    super.key,
    required this.blog,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        Navigator.push(context, BlogViewerPage.route(blog));
      },
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Container(
          decoration: BoxDecoration(
            color: color.withOpacity(.2),
            borderRadius: BorderRadius.circular(12.0),
            border: Border.all(
              color: color.withOpacity(.4),
              width: 1,
            ),
          ),
          child: Container(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                ClipRRect(
                  borderRadius: BorderRadius.circular(12.0),
                  child: Image.network(
                    blog.imageUrl,
                    height: 180,
                    width: double.infinity,
                    fit: BoxFit.cover,
                  ),
                ),
                const SizedBox(
                    height: 12), // Increased spacing for better separation
                Text(
                  blog.title,
                  style: const TextStyle(
                    fontSize: 16, // Increased font size for title
                  ),
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                ),
                const SizedBox(height: 8),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    SingleChildScrollView(
                      scrollDirection: Axis.horizontal,
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Wrap(
                            spacing: 5,
                            children: blog.topics
                                .map(
                                  (e) => Chip(
                                    side: BorderSide(
                                      color: color.withOpacity(.4),
                                      width: 1,
                                    ),
                                    label: Text(e),
                                  ),
                                )
                                .toList(),
                          ),
                        ],
                      ),
                    ),
                    Text(
                      '${calculateReadingTime(blog.content)} min read',
                      style: TextStyle(
                        fontSize: 14, // Adjusted font size for reading time
                        color: Colors.grey[600],
                      ),
                    ),
                  ],
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}

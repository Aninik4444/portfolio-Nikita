import React from 'react';
import { useTheme } from '../context/ThemeContext';

const projects = [
  {
    title: 'Amazon Clone Web App',
    description: 'Full-stack e-commerce platform with authentication, shopping cart, and order processing features.',
    technologies: ['React', 'Node.js', 'Express', 'MongoDB', 'AWS', 'JWT', 'Multer'],
    githubUrl: 'https://github.com/Aninik4444/amazon-clone',
    demoUrl: 'https://amazon-clone.nikita.com'
  }
];

const Projects = () => {
  const { theme } = useTheme();
  
  return (
    <section id="projects" className="py-16">
      <div className="max-w-4xl mx-auto">
        <h2 className={`text-3xl font-bold mb-8 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          Projects
        </h2>
        
        {projects.map((project, index) => (
          <div 
            key={index} 
            className={`mb-8 p-6 rounded-lg ${theme === 'dark' ? 'bg-gray-800' : 'bg-gray-100'}`}
          >
            <h3 className={`text-xl font-bold mb-2 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
              {project.title}
            </h3>
            <p className={`mb-4 ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
              {project.description}
            </p>
            <div className="flex flex-wrap gap-2 mb-4">
              {project.technologies.map((tech, techIndex) => (
                <span 
                  key={techIndex}
                  className={`px-3 py-1 rounded-full text-xs ${
                    theme === 'dark' 
                      ? 'bg-gray-700 text-indigo-300' 
                      : 'bg-indigo-100 text-indigo-800'
                  }`}
                >
                  {tech}
                </span>
              ))}
            </div>
            <div className="flex gap-4">
              {project.githubUrl && (
                <a 
                  href={project.githubUrl} 
                  target="_blank" 
                  rel="noopener noreferrer"
                  className="text-indigo-600 dark:text-indigo-400 hover:underline"
                >
                  View on GitHub
                </a>
              )}
              {project.demoUrl && (
                <a 
                  href={project.demoUrl} 
                  target="_blank" 
                  rel="noopener noreferrer"
                  className="text-indigo-600 dark:text-indigo-400 hover:underline"
                >
                  Live Demo
                </a>
              )}
            </div>
          </div>
        ))}
      </div>
    </section>
  );
};

export default Projects;

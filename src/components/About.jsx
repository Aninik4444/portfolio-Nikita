import React from 'react';
import { useTheme } from '../context/ThemeContext';

const About = () => {
  const { theme } = useTheme();
  
  return (
    <section id="about" className="py-16">
      <div className="max-w-4xl mx-auto">
        <h2 className={`text-3xl font-bold mb-8 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          About Me
        </h2>
        <div className={`p-6 rounded-lg ${theme === 'dark' ? 'bg-gray-800' : 'bg-gray-100'}`}>
          <p className={`mb-4 ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
            MERN Stack Developer with 2.5 years of experience building scalable web applications using JavaScript, React, Node.js, and MongoDB.
          </p>
          <p className={`mb-4 ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
            Experienced in working with Agile methodologies, collaborating with cross-functional teams to deliver high-quality software solutions.
          </p>
          <p className={`${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
            Passionate about performance optimization, clean code practices, and implementing modern web technologies to create efficient and user-friendly applications.
          </p>
        </div>
      </div>
    </section>
  );
};

export default About;

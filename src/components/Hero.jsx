import React from 'react';
import { useTheme } from '../context/ThemeContext';

const Hero = () => {
  const { theme } = useTheme();
  
  const handleDownload = () => {
    // Using the public URL of the resume
    const link = document.createElement('a');
    link.href = '../resume.pdf';
    link.download = 'Nikita_Kumari_Resume.pdf';
    document.body.appendChild(link);
    link.click();
    document.body.removeChild(link);
  };

  return (
    <section id="home" className="py-20">
      <div className="text-center">
        <h1 className={`text-5xl font-bold mb-4 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          Nikita Kumari
        </h1>
        <h2 className="text-2xl mb-6 text-indigo-600 dark:text-indigo-400">
          MERN Stack Developer
        </h2>
        <p className={`text-xl mb-8 max-w-2xl mx-auto ${theme === 'dark' ? 'text-gray-300' : 'text-gray-600'}`}>
          Building scalable web applications with JavaScript, React, Node.js, and MongoDB
        </p>
        <div className="flex justify-center gap-4">
          <button 
            onClick={handleDownload}
            className="px-6 py-3 bg-indigo-600 text-white rounded-lg hover:bg-indigo-700 transition-colors"
          >
            Download CV
          </button>
          <a 
            href="#contact" 
            className="px-6 py-3 border border-indigo-600 text-indigo-600 dark:text-indigo-400 dark:border-indigo-400 rounded-lg hover:bg-indigo-50 dark:hover:bg-gray-800 transition-colors"
          >
            Contact Me
          </a>
        </div>
      </div>
    </section>
  );
};

export default Hero;
import React from 'react';
import { useTheme } from '../context/ThemeContext';

const experiences = [
  {
    company: 'Hudl India Pvt Ltd',
    position: 'MERN Stack Developer',
    duration: 'Oct 2021 – Mar 2024',
    responsibilities: [
      'Developed and maintained scalable web applications using the MERN stack',
      'Implemented JWT for secure authentication and authorization',
      'Integrated Multer for file uploads and AWS SDK for cloud storage',
      'Followed Agile methodologies in a cross-functional team environment',
      'Optimized application performance through code refactoring and database indexing',
      'Participated in code reviews and mentored junior developers'
    ]
  }
];

const Experience = () => {
  const { theme } = useTheme();
  
  return (
    <section id="experience" className="py-16">
      <div className="max-w-4xl mx-auto">
        <h2 className={`text-3xl font-bold mb-8 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          Professional Experience
        </h2>
        
        {experiences.map((exp, index) => (
          <div 
            key={index} 
            className={`mb-8 p-6 rounded-lg ${theme === 'dark' ? 'bg-gray-800' : 'bg-gray-100'}`}
          >
            <div className="flex flex-col md:flex-row md:justify-between md:items-center mb-4">
              <h3 className={`text-xl font-bold ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
                {exp.company}
              </h3>
              <span className={`text-sm ${theme === 'dark' ? 'text-gray-400' : 'text-gray-600'}`}>
                {exp.duration}
              </span>
            </div>
            <h4 className={`text-lg font-semibold mb-3 ${theme === 'dark' ? 'text-indigo-300' : 'text-indigo-600'}`}>
              {exp.position}
            </h4>
            <ul className={`list-disc pl-5 space-y-2 ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
              {exp.responsibilities.map((resp, respIndex) => (
                <li key={respIndex}>{resp}</li>
              ))}
            </ul>
          </div>
        ))}
      </div>
    </section>
  );
};

export default Experience;

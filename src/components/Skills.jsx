import React from 'react';
import { useTheme } from '../context/ThemeContext';

const skills = [
  { name: 'JavaScript (ES6+)', category: 'language' },
  { name: 'React.js', category: 'frontend' },
  { name: 'Node.js', category: 'backend' },
  { name: 'Express.js', category: 'backend' },
  { name: 'MongoDB', category: 'database' },
  { name: 'AWS', category: 'cloud' },
  { name: 'Git', category: 'tool' },
  { name: 'CI/CD', category: 'devops' },
  { name: 'Jest', category: 'testing' },
  { name: 'HTML/CSS', category: 'frontend' },
  { name: 'JWT', category: 'security' },
  { name: 'Multer', category: 'backend' },
  { name: 'Mongoose', category: 'database' },
  { name: 'REST APIs', category: 'backend' },
  { name: 'Agile Methodologies', category: 'process' }
];

const Skills = () => {
  const { theme } = useTheme();
  
  return (
    <section id="skills" className="py-16">
      <div className="max-w-4xl mx-auto">
        <h2 className={`text-3xl font-bold mb-8 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          Skills & Technologies
        </h2>
        <div className="flex flex-wrap gap-3">
          {skills.map((skill, index) => (
            <span 
              key={index}
              className={`px-4 py-2 rounded-full text-sm font-medium ${
                theme === 'dark' 
                  ? 'bg-gray-700 text-indigo-300' 
                  : 'bg-indigo-100 text-indigo-800'
              }`}
            >
              {skill.name}
            </span>
          ))}
        </div>
      </div>
    </section>
  );
};

export default Skills;

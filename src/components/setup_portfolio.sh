# Navigate to the components directory
cd nikita-portfolio/client/src/components

# Create all component files with their content
cat > Navbar.jsx << 'EOL'
import React from 'react';
import { useTheme } from '../context/ThemeContext';

const Navbar = () => {
  const { theme, toggleTheme } = useTheme();
  
  return (
    <nav className={`sticky top-0 z-10 ${theme === 'dark' ? 'bg-gray-800' : 'bg-white'} shadow-md`}>
      <div className="container mx-auto px-4 py-4 flex justify-between items-center">
        <a 
          href="#home" 
          className={`text-xl font-bold ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}
        >
          Nikita Kumari
        </a>
        
        <div className="flex items-center gap-6">
          <div className="hidden md:flex gap-6">
            <a href="#about" className={`${theme === 'dark' ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'}`}>About</a>
            <a href="#skills" className={`${theme === 'dark' ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'}`}>Skills</a>
            <a href="#projects" className={`${theme === 'dark' ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'}`}>Projects</a>
            <a href="#experience" className={`${theme === 'dark' ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'}`}>Experience</a>
            <a href="#contact" className={`${theme === 'dark' ? 'text-gray-300 hover:text-white' : 'text-gray-600 hover:text-gray-900'}`}>Contact</a>
          </div>
          
          <button
            onClick={toggleTheme}
            className={`p-2 rounded-full ${theme === 'dark' ? 'bg-gray-700 text-yellow-300' : 'bg-gray-200 text-gray-700'}`}
            aria-label="Toggle dark mode"
          >
            {theme === 'dark' ? (
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M12 3v1m0 16v1m9-9h-1M4 12H3m15.364 6.364l-.707-.707M6.343 6.343l-.707-.707m12.728 0l-.707.707M6.343 17.657l-.707.707M16 12a4 4 0 11-8 0 4 4 0 018 0z" />
              </svg>
            ) : (
              <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M20.354 15.354A9 9 0 018.646 3.646 9.003 9.003 0 0012 21a9.003 9.003 0 008.354-5.646z" />
              </svg>
            )}
          </button>
        </div>
      </div>
    </nav>
  );
};

export default Navbar;
EOL

cat > About.jsx << 'EOL'
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
EOL

cat > Skills.jsx << 'EOL'
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
EOL

cat > Projects.jsx << 'EOL'
import React from 'react';
import { useTheme } from '../context/ThemeContext';

const projects = [
  {
    title: 'Amazon Clone Web App',
    description: 'Full-stack e-commerce platform with authentication, shopping cart, and order processing features.',
    technologies: ['React', 'Node.js', 'Express', 'MongoDB', 'AWS', 'JWT', 'Multer'],
    githubUrl: 'https://github.com/nikita/amazon-clone',
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
EOL

cat > Experience.jsx << 'EOL'
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
EOL

cat > Contact.jsx << 'EOL'
import React, { useState } from 'react';
import { useTheme } from '../context/ThemeContext';

const Contact = () => {
  const { theme } = useTheme();
  const [formData, setFormData] = useState({
    name: '',
    email: '',
    message: ''
  });
  const [submitted, setSubmitted] = useState(false);

  const handleChange = (e) => {
    setFormData({
      ...formData,
      [e.target.name]: e.target.value
    });
  };

  const handleSubmit = async (e) => {
    e.preventDefault();
    try {
      const response = await fetch('/api/contact', {
        method: 'POST',
        headers: {
          'Content-Type': 'application/json'
        },
        body: JSON.stringify(formData)
      });
      
      if (response.ok) {
        setSubmitted(true);
        setFormData({ name: '', email: '', message: '' });
      }
    } catch (error) {
      console.error('Error:', error);
    }
  };

  return (
    <section id="contact" className="py-16">
      <div className="max-w-4xl mx-auto">
        <h2 className={`text-3xl font-bold mb-8 ${theme === 'dark' ? 'text-white' : 'text-gray-800'}`}>
          Get In Touch
        </h2>
        
        <div className="grid grid-cols-1 md:grid-cols-2 gap-8">
          <div>
            <h3 className={`text-xl font-semibold mb-4 ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}>
              Contact Information
            </h3>
            <div className={`space-y-4 ${theme === 'dark' ? 'text-gray-400' : 'text-gray-600'}`}>
              <p>Feel free to reach out for collaboration or just to say hello!</p>
              <div className="flex items-center gap-3">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M3 8l7.89 5.26a2 2 0 002.22 0L21 8M5 19h14a2 2 0 002-2V7a2 2 0 00-2-2H5a2 2 0 00-2 2v10a2 2 0 002 2z" />
                </svg>
                <span>nikita@example.com</span>
              </div>
              <div className="flex items-center gap-3">
                <svg className="w-5 h-5" fill="none" stroke="currentColor" viewBox="0 0 24 24">
                  <path strokeLinecap="round" strokeLinejoin="round" strokeWidth={2} d="M16 8a6 6 0 016 6v7h-4v-7a2 2 0 00-2-2 2 2 0 00-2 2v7h-4v-7a6 6 0 016-6zM2 9h4v12H2z" />
                  <circle cx="4" cy="4" r="2" stroke="none" />
                </svg>
                <a 
                  href="https://linkedin.com/in/nikita" 
                  target="_blank" 
                  rel="noopener noreferrer"
                  className="text-indigo-600 dark:text-indigo-400 hover:underline"
                >
                  linkedin.com/in/nikita
                </a>
              </div>
            </div>
          </div>
          
          <div>
            {submitted ? (
              <div className={`p-4 rounded-lg ${theme === 'dark' ? 'bg-green-900 text-green-200' : 'bg-green-100 text-green-800'}`}>
                Thank you for your message! I'll get back to you soon.
              </div>
            ) : (
              <form onSubmit={handleSubmit} className="space-y-4">
                <div>
                  <label 
                    htmlFor="name" 
                    className={`block mb-1 text-sm font-medium ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}
                  >
                    Name
                  </label>
                  <input
                    type="text"
                    id="name"
                    name="name"
                    value={formData.name}
                    onChange={handleChange}
                    required
                    className={`w-full px-3 py-2 rounded-md border ${
                      theme === 'dark' 
                        ? 'bg-gray-700 border-gray-600 text-white' 
                        : 'bg-white border-gray-300 text-gray-800'
                    }`}
                  />
                </div>
                <div>
                  <label 
                    htmlFor="email" 
                    className={`block mb-1 text-sm font-medium ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}
                  >
                    Email
                  </label>
                  <input
                    type="email"
                    id="email"
                    name="email"
                    value={formData.email}
                    onChange={handleChange}
                    required
                    className={`w-full px-3 py-2 rounded-md border ${
                      theme === 'dark' 
                        ? 'bg-gray-700 border-gray-600 text-white' 
                        : 'bg-white border-gray-300 text-gray-800'
                    }`}
                  />
                </div>
                <div>
                  <label 
                    htmlFor="message" 
                    className={`block mb-1 text-sm font-medium ${theme === 'dark' ? 'text-gray-300' : 'text-gray-700'}`}
                  >
                    Message
                  </label>
                  <textarea
                    id="message"
                    name="message"
                    rows="4"
                    value={formData.message}
                    onChange={handleChange}
                    required
                    className={`w-full px-3 py-2 rounded-md border ${
                      theme === 'dark' 
                        ? 'bg-gray-700 border-gray-600 text-white' 
                        : 'bg-white border-gray-300 text-gray-800'
                    }`}
                  />
                </div>
                <button
                  type="submit"
                  className="px-6 py-2 bg-indigo-600 text-white rounded-md hover:bg-indigo-700 transition-colors"
                >
                  Send Message
                </button>
              </form>
            )}
          </div>
        </div>
      </div>
    </section>
  );
};

export default Contact;
EOL

# Create the ThemeContext file
cat > ../context/ThemeContext.jsx << 'EOL'
import React, { createContext, useContext, useEffect, useState } from 'react';

const ThemeContext = createContext();

export const ThemeProvider = ({ children }) => {
  const [theme, setTheme] = useState('light');

  useEffect(() => {
    const savedTheme = localStorage.getItem('theme') || 'light';
    setTheme(savedTheme);
    document.documentElement.classList.toggle('dark', savedTheme === 'dark');
  }, []);

  const toggleTheme = () => {
    const newTheme = theme === 'light' ? 'dark' : 'light';
    setTheme(newTheme);
    localStorage.setItem('theme', newTheme);
    document.documentElement.classList.toggle('dark', newTheme === 'dark');
  };

  return (
    <ThemeContext.Provider value={{ theme, toggleTheme }}>
      {children}
    </ThemeContext.Provider>
  );
};

export const useTheme = () => useContext(ThemeContext);
EOL

echo "All components created successfully!"
echo "Now you can run the development server:"
echo "cd ../.. && npm start"
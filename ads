<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1.0">
  <title>Lynchburg Ad Agency</title>
  <meta name="description" content="Helping small businesses in Lynchburg, VA grow with powerful online advertising solutions.">
  <link rel="icon" href="favicon.ico" type="image/x-icon">
  <script src="https://cdn.tailwindcss.com"></script>
  <script type="text/javascript" src="https://cdn.jsdelivr.net/npm/emailjs-com@3/dist/email.min.js"></script>
  <script type="text/javascript">
    (function(){
      emailjs.init("Ra4HxAXGwhUBW3sJa"); // ✅ Your Public Key
    })();
  </script>
</head>
<body class="bg-gray-900 text-white font-sans relative">

  <!-- Hero Section -->
  <header class="bg-gradient-to-r from-purple-700 via-indigo-700 to-blue-700 text-center py-20 shadow-lg">
    <h1 class="text-5xl font-extrabold mb-4">Lynchburg Ad Agency</h1>
    <p class="text-lg max-w-2xl mx-auto">
      Helping small businesses in Lynchburg, VA grow with powerful online advertising.
    </p>
  </header>

  <!-- About Section -->
  <section class="py-16 px-6 max-w-5xl mx-auto text-center">
    <h2 class="text-3xl font-bold mb-6">Why Choose Us?</h2>
    <p class="text-gray-300 mb-6">
      We specialize in creating and managing targeted ad campaigns designed to get your business noticed.
      From social media to Google ads, we handle it all so you can focus on running your business.
    </p>
    <div class="grid md:grid-cols-3 gap-8">
      <div class="bg-gray-800 p-6 rounded-2xl shadow-lg">
        <h3 class="text-xl font-semibold mb-3">📈 Targeted Growth</h3>
        <p class="text-gray-400">Custom campaigns that bring in real customers.</p>
      </div>
      <div class="bg-gray-800 p-6 rounded-2xl shadow-lg">
        <h3 class="text-xl font-semibold mb-3">💡 Creative Ads</h3>
        <p class="text-gray-400">Eye-catching designs tailored to your brand.</p>
      </div>
      <div class="bg-gray-800 p-6 rounded-2xl shadow-lg">
        <h3 class="text-xl font-semibold mb-3">🤝 Local Support</h3>
        <p class="text-gray-400">Dedicated to small businesses in Lynchburg.</p>
      </div>
    </div>
  </section>

  <!-- Contact Form -->
  <section id="contact" class="py-16 px-6 bg-gradient-to-r from-blue-700 to-purple-700">
    <div class="max-w-3xl mx-auto text-center">
      <h2 class="text-3xl font-bold mb-6">Get In Touch</h2>
      <p class="mb-8 text-gray-200">Let’s talk about how we can grow your business online.</p>
      <form id="contact-form" class="grid gap-4 bg-gray-900 p-8 rounded-2xl shadow-xl">
        <input type="text" name="from_name" aria-label="Your Name" placeholder="Your Name" required class="p-3 rounded bg-gray-800 border border-gray-700 focus:outline-none focus:ring-2 focus:ring-purple-500">
        <input type="email" name="from_email" aria-label="Your Email" placeholder="Your Email" required class="p-3 rounded bg-gray-800 border border-gray-700 focus:outline-none focus:ring-2 focus:ring-purple-500">
        <textarea name="message" aria-label="Your Message" placeholder="Your Message" required class="p-3 rounded bg-gray-800 border border-gray-700 focus:outline-none focus:ring-2 focus:ring-purple-500 h-32"></textarea>
        <button type="submit" class="bg-purple-600 hover:bg-purple-800 transition text-white font-semibold py-3 rounded-xl">
          Send Message
        </button>
        <p id="form-status" class="mt-4 text-sm"></p>
      </form>
    </div>
  </section>

  <!-- Footer -->
  <footer class="bg-gray-800 text-center py-6 mt-12">
    <p class="text-gray-400">&copy; 2025 Lynchburg Ad Agency. All Rights Reserved.</p>
  </footer>

  <!-- Floating CTA Button -->
  <button id="cta-button" class="fixed bottom-8 right-8 bg-purple-600 hover:bg-purple-800 text-white font-semibold py-3 px-5 rounded-full shadow-lg transition-transform transform hover:scale-105 z-50">
    Get a Free Consultation
  </button>

  <!-- EmailJS Script -->
  <script>
    // Smooth scroll for CTA button
    document.getElementById('cta-button').addEventListener('click', () => {
      document.getElementById('contact').scrollIntoView({ behavior: 'smooth' });
    });

    // Form submission with EmailJS
    document.getElementById('contact-form').addEventListener('submit', function(e) {
      e.preventDefault();
      const status = document.getElementById('form-status');
      status.textContent = "⏳ Sending...";
      status.className = "text-blue-300 mt-4";

      emailjs.sendForm('service_pbvcy0m', 'template_53mpbyh', this)
        .then(() => {
          status.textContent = "✅ Message sent successfully! I’ll be in touch soon.";
          status.className = "text-green-400 mt-4";
          this.reset();
        }, (error) => {
          status.textContent = "❌ Failed to send: " + error.text;
          status.className = "text-red-400 mt-4";
        });
    });
  </script>
</body>
</html>

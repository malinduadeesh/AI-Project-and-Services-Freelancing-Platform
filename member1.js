// UI-only interactions. No authentication, payments or database persistence.
document.addEventListener('DOMContentLoaded', () => {
  const login = document.getElementById('login-form');
  if (login) login.addEventListener('submit', e => {e.preventDefault(); document.getElementById('form-note').textContent='Prototype only — login will be connected to the backend later.';});
  const register = document.getElementById('register-form');
  if (register) register.addEventListener('submit', e => {e.preventDefault(); const a=document.getElementById('password'),b=document.getElementById('confirm-password');document.getElementById('form-note').textContent=a.value===b.value?'Prototype only — registration will be connected to the backend later.':'Passwords do not match.';});
  const search=document.getElementById('project-search');
  if(search) search.addEventListener('input',()=>{const q=search.value.toLowerCase();document.querySelectorAll('[data-project]').forEach(card=>{card.hidden=!card.textContent.toLowerCase().includes(q);});});
  const profile=document.getElementById('profile-form');
  if(profile) profile.addEventListener('submit',e=>{e.preventDefault();document.getElementById('profile-note').textContent='Changes are shown in this prototype only; nothing has been saved to a database.';});
  document.querySelectorAll('[data-add]').forEach(button=>button.addEventListener('click',()=>{const type=button.dataset.add;const select=document.getElementById(type+'-select');const target=document.getElementById(type+'-tags');if(!select.value || [...target.querySelectorAll('.pill')].some(p=>p.dataset.value===select.value))return;const pill=document.createElement('span');pill.className='pill';pill.dataset.value=select.value;pill.append(document.createTextNode(select.value+' '));const remove=document.createElement('button');remove.type='button';remove.textContent='×';remove.setAttribute('aria-label','Remove '+select.value);remove.onclick=()=>pill.remove();pill.append(remove);target.append(pill);}));
  document.querySelectorAll('.pill button').forEach(b=>b.addEventListener('click',()=>b.parentElement.remove()));
  document.querySelectorAll('[data-demo-action]').forEach(b=>b.addEventListener('click',()=>alert('UI prototype only — this feature belongs to another module or will be connected later.')));
});

# import streamlit as st
# from app1 import *

# st.title("Roomies: Database Q&A 🏠🧑🏻‍🤝‍🧑🏻")

# question = st.text_input("Write your Questions and I'll try to give your Answers 😊: ")
# submit = st.button("Submit")

# if question:
#     chain = get_db_chain()
#     response = chain.run(question)
#     st.header("Answer")
#     st.write(response)

import streamlit as st
from app import get_few_shot_db_chain

st.title("Roomies: Database Q&A 🏠🧑🏻‍🤝‍🧑🏻")

question = st.text_input("Write your Questions and I'll try to give your Answers😊: ")
submit = st.button("Submit")

if question:
    chain = get_few_shot_db_chain()
    response = chain.run(question)
    st.header("Answer")
    st.write(response)

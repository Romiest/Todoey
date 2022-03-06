const express=require('express');
const User=require('../models/user.model')

const Router=express.Router()

Router.post('/signin',(req,res)=>{
 User.findOne({name:req.body.name,password:req.body.password},(err,user)=>{
     if(err){
         console.log(err)
         res.json(err)   
     }
     else{

        res.json(user)
     }
 })
})


Router.post('/register',(req,res)=>{
    User.findOne({name:req.body.name},(err,user)=>{
        if(err){
            console.log(err)
            res.json(err)
        }
        else{
            if(user==null){
                const user=User({
                    name:req.body.name,
                    password:req.body.password
                })
                user.save().then((err)=>{
                    if(err){
                        console.log(err)
                        res.json(err)   
                    }
                    else{
                        console.log(user)
                        res.json(user)
                    }
                }
                )}
                else{
                    res.json({
                        message:'userName already exists'
                    })
                }
        
        }
    }



 

    )
})

module.exports=Router
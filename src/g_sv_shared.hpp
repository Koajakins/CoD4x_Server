﻿/*
===========================================================================
    Copyright (C) 2010-2013  Ninja and TheKelm
    Copyright (C) 1999-2005 Id Software, Inc.

    This file is part of CoD4X18-Server source code.

    CoD4X18-Server source code is free software: you can redistribute it and/or modify
    it under the terms of the GNU Affero General Public License as
    published by the Free Software Foundation, either version 3 of the
    License, or (at your option) any later version.

    CoD4X18-Server source code is distributed in the hope that it will be useful,
    but WITHOUT ANY WARRANTY; without even the implied warranty of
    MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
    GNU Affero General Public License for more details.

    You should have received a copy of the GNU Affero General Public License
    along with this program.  If not, see <http://www.gnu.org/licenses/>
===========================================================================
*/



#ifndef __G_SV_SHARED_H__
#define __G_SV_SHARED_H__

#include "qshared.hpp"
#include "qshared.hpp"
#include "entity.hpp"
#include "cvar.hpp"
#include "server.hpp"

void Init_CallVote(void);
void __cdecl Cmd_CallVote_f( gentity_t *ent );
void G_ChatRedirect(char* msg, int client, int mode);
void G_AddChatRedirect(void (*rd_dest)( const char *, int, int));
void G_SayTo(gentity_t *ent, gentity_t *other, int mode, int color, const char *teamname, const char *name, const char *message);

extern cvar_t* g_speed;

void __cdecl SV_GameSendServerCommand(int clientnum, int svscmd_type, const char *text);

extern "C"
{
    void G_ShowMotd(unsigned int clnum);
    qboolean Cmd_FollowClient_f(gentity_t *ent, int clientnum);
    void __cdeclClientUserinfoChanged( int clientNum );
    void ClientCleanName(const char *in, char *out, int outSize, qboolean allowcolor);
    int __cdecl G_LocalizedStringIndex( const char* );
}; //extern "C"



void G_PrintRedirect(char* msg, int len);
void Pmove_ExtendedResetState( void );
void Pmove_ExtendedInitForClient(client_t *cl);
void Pmove_ExtendedTurnOn( void );
__optimize3 int __cdecl Pmove_GetSpeed( playerState_t *ps );
__optimize3 int __cdecl Pmove_GetGravity( playerState_t *ps );
__optimize3 float __cdecl Jump_GetHeight( playerState_t *ps);
__optimize3 void __cdecl Jump_ClampVelocity(playerState_t* ps, vec3_t vec);
__optimize3 qboolean __cdecl Jump_IsPlayerAboveMax(playerState_t* ps);
__optimize3 qboolean __cdecl Jump_GetStepHeight(playerState_t* ps, const vec3_t vec1, float* val2);
__optimize3 float __cdecl Jump_CalcHeight( playerState_t* ps );

void __cdecl ClientCommand( int );

void G_PrintRuleForPlayer(client_t *cl);
void G_PrintAdvertForPlayer(client_t *cl);
void G_SetupHudMessagesForPlayer(client_t* cl);
void G_DestroyAdsForPlayer(client_t *cl);
void G_AddRule(const char* newtext);
void G_AddAdvert(const char* newtext);
void G_InitMotd();
void G_ClearAllMessages();
#endif

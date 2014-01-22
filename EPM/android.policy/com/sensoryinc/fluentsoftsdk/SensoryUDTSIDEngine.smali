.class public Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;
.super Ljava/lang/Object;
.source "SensoryUDTSIDEngine.java"


# static fields
.field private static final SUBTAG:Ljava/lang/String; = "secMM: "

.field private static final TAG:Ljava/lang/String; = "SensoryUDTSIDEngine"

.field private static final UDTSID_ENROLL_CNT:S = 0x4s

.field private static final UDTSID_NUM_USERS:S = 0x5s

.field private static final UDTSIDnetfile:Ljava/lang/String; = "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

.field private static final UDTSIDsearchfile:Ljava/lang/String; = "/system/wakeupdata/sensory/phonemeSearch_1_2.raw"

.field private static final udtsvsidfile:Ljava/lang/String; = "/system/wakeupdata/sensory/svsid_1_1.raw"


# instance fields
.field private m_lSessionValue:J


# direct methods
.method public constructor <init>()V
    .registers 3

    .prologue
    .line 5
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 17
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-void
.end method

.method public static init()I
    .registers 4

    .prologue
    .line 57
    const/4 v1, 0x0

    .line 62
    .local v1, "nResult":I
    :try_start_1
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Trying to load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    const-string v2, "SensoryUDTSIDEngine"

    invoke-static {v2}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 64
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "Loading libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_14
    .catch Ljava/lang/UnsatisfiedLinkError; {:try_start_1 .. :try_end_14} :catch_15
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_14} :catch_1f

    .line 77
    :goto_14
    return v1

    .line 66
    :catch_15
    move-exception v0

    .line 68
    .local v0, "e":Ljava/lang/UnsatisfiedLinkError;
    const-string v2, "SensoryUDTSIDEngine"

    const-string v3, "WARNING: libSensoryUDTSIDEngine Could not load libSensoryUDTSIDEngine.so"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/4 v1, -0x1

    .line 75
    goto :goto_14

    .line 71
    .end local v0    # "e":Ljava/lang/UnsatisfiedLinkError;
    :catch_1f
    move-exception v0

    .line 73
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 74
    const/4 v1, -0x1

    goto :goto_14
.end method


# virtual methods
.method public native checkNewRecordings(JS)I
.end method

.method public checkResultEnroll(SS)I
    .registers 6
    .param p1, "enrollIdx"    # S
    .param p2, "userID"    # S

    .prologue
    .line 152
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultEnroll(JSS)I

    move-result v0

    .line 153
    .local v0, "recResult":I
    return v0
.end method

.method public closeModels()V
    .registers 7

    .prologue
    const-wide/16 v4, 0x0

    .line 288
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: closeModels, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v4

    if-eqz v0, :cond_29

    .line 291
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->closeRecog(J)V

    .line 292
    iput-wide v4, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 294
    :cond_29
    return-void
.end method

.method public native closeRecog(J)V
.end method

.method public native closeSession(J)V
.end method

.method public consistencyCheckEnroll(S[S)I
    .registers 14
    .param p1, "shUserID"    # S
    .param p2, "shProIndex"    # [S

    .prologue
    const/4 v10, 0x4

    const/4 v5, 0x0

    .line 159
    iget-wide v6, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v6, v7, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->checkNewRecordings(JS)I

    move-result v1

    .line 161
    .local v1, "ii":I
    const/4 v3, 0x0

    .line 163
    .local v3, "sum":I
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secMM: consistencyCheckEnroll.result : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 165
    const/4 v6, 0x1

    if-eq v1, v6, :cond_3d

    .line 167
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secMM: checkNewRecordings failed, ii : "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    :goto_3c
    return v5

    .line 171
    :cond_3d
    iget-wide v6, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v6, v7, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getPhraseQuality(JS)F

    move-result v2

    .line 172
    .local v2, "score":F
    iget-wide v6, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v6, v7, p1}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getFeedbackDetails(JS)[J

    move-result-object v0

    .line 174
    .local v0, "details":[J
    const/4 v4, 0x0

    .local v4, "x":I
    :goto_4a
    if-ge v4, v10, :cond_83

    .line 176
    aget-wide v6, v0, v4

    const-wide/16 v8, 0x0

    cmp-long v6, v6, v8

    if-nez v6, :cond_7d

    .line 178
    add-int/lit8 v3, v3, 0x1

    .line 186
    :goto_56
    const-string v6, "SensoryUDTSIDEngine"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "secMM: Feedback details: "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    aget-wide v8, v0, v4

    invoke-virtual {v7, v8, v9}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    add-int/lit8 v4, v4, 0x1

    goto :goto_4a

    .line 182
    :cond_7d
    int-to-short v6, v4

    aput-short v6, p2, v5

    .line 183
    add-int/lit8 v3, v3, 0x2

    goto :goto_56

    .line 189
    :cond_83
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: Feedback sum: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    if-ne v3, v10, :cond_bb

    .line 194
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: Trigger Quality, score :  "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 201
    :goto_b5
    const/4 v5, 0x6

    if-lt v3, v5, :cond_b9

    .line 203
    const/4 v3, 0x6

    :cond_b9
    move v5, v3

    .line 206
    goto :goto_3c

    .line 198
    :cond_bb
    const-string v5, "SensoryUDTSIDEngine"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "secMM: Problems in one or more recordings., score : "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_b5
.end method

.method public deleteModel(Ljava/lang/String;S)I
    .registers 8
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 230
    const-string v1, "SensoryUDTSIDEngine"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "secMM: deleteModel, CommandNumber : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const/4 v0, 0x0

    .line 233
    .local v0, "nResult":I
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v3, 0x0

    cmp-long v1, v1, v3

    if-nez v1, :cond_2a

    .line 235
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "deleteModel, trig is ZERO!. need to load model"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const/4 v1, -0x1

    .line 246
    :goto_29
    return v1

    .line 239
    :cond_2a
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v1, v2, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->deleteUser(JS)I

    move-result v0

    .line 240
    const/4 v1, 0x1

    if-ne v0, v1, :cond_3d

    .line 242
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: deleteModel, re-doEnroll"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    invoke-virtual {p0, p1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnrollModel(Ljava/lang/String;S)I

    .line 246
    :cond_3d
    const/4 v1, 0x0

    goto :goto_29
.end method

.method public native deleteUser(JS)I
.end method

.method public native doEnroll(JLjava/lang/String;Ljava/lang/String;)I
.end method

.method public doEnrollModel(Ljava/lang/String;S)I
    .registers 7
    .param p1, "appDir"    # Ljava/lang/String;
    .param p2, "userIdx"    # S

    .prologue
    .line 212
    const/4 v0, 0x0

    .line 213
    .local v0, "nResult":I
    const/4 v1, 0x1

    if-ne p2, v1, :cond_14

    .line 215
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: CommandNumber is 1 ... Deep dump enabled"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, "pc36"

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 224
    :goto_13
    return v0

    .line 220
    :cond_14
    const-string v1, "SensoryUDTSIDEngine"

    const-string v2, "secMM: CommandNumber is > 1 ... no Deep dump"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, ""

    invoke-virtual {p0, v1, v2, p1, v3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->doEnroll(JLjava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_13
.end method

.method public native getFeedbackDetails(JS)[J
.end method

.method public native getPhraseQuality(JS)F
.end method

.method public native getResultEnroll(JSS)I
.end method

.method public native getResultTest(JILjava/lang/String;)I
.end method

.method public getSessionValue()J
    .registers 5

    .prologue
    .line 102
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: getSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    return-wide v0
.end method

.method public native initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J
.end method

.method public native initSession()J
.end method

.method public loadModels(Ljava/lang/String;S)I
    .registers 16
    .param p1, "ROOT"    # Ljava/lang/String;
    .param p2, "CommandNumber"    # S

    .prologue
    .line 252
    const-wide/16 v10, 0x0

    .line 253
    .local v10, "UDTSIDinitRecogReturn":J
    const/4 v12, 0x0

    .line 255
    .local v12, "nResult":I
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-eqz v0, :cond_73

    .line 257
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: loadModels, Call initRecog, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 258
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-string v3, "/system/wakeupdata/sensory/nn_en_us_mfcc_16k_15_250_v5.1.1.raw"

    const-string v4, "/system/wakeupdata/sensory/svsid_1_1.raw"

    const-string v5, "/system/wakeupdata/sensory/phonemeSearch_1_2.raw"

    const/4 v7, 0x5

    const/4 v8, 0x4

    move-object v0, p0

    move-object v6, p1

    move v9, p2

    invoke-virtual/range {v0 .. v9}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->initRecog(JLjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;SSS)J

    move-result-wide v10

    .line 265
    const-wide/16 v0, 0x0

    cmp-long v0, v10, v0

    if-eqz v0, :cond_43

    .line 267
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {p0, v0, v1, p2}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->loadUsers(JS)I

    move-result v12

    .line 283
    :goto_42
    return v12

    .line 271
    :cond_43
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "LoadModels, failed to initRecog, result : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v10, v11}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", CommandNumber : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v12, 0x0

    goto :goto_42

    .line 279
    :cond_73
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "LoadModels, trig is ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 280
    const/4 v12, 0x0

    goto :goto_42
.end method

.method public native loadUsers(JS)I
.end method

.method public native pipeRecogEnroll(J[SJ)I
.end method

.method public native pipeRecogTest(J[SJ)I
.end method

.method public processEnroll([SI)I
    .registers 9
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I

    .prologue
    .line 110
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_11

    .line 112
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processEnroll , trig is ZERO, terminate to enroll"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/4 v0, 0x0

    .line 116
    :goto_10
    return v0

    :cond_11
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogEnroll(J[SJ)I

    move-result v0

    goto :goto_10
.end method

.method public processVerify([SILjava/lang/String;[S)I
    .registers 13
    .param p1, "recordBuffer"    # [S
    .param p2, "readLength"    # I
    .param p3, "ROOT"    # Ljava/lang/String;
    .param p4, "CommandType"    # [S

    .prologue
    const/4 v7, 0x0

    .line 122
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const-wide/16 v2, 0x0

    cmp-long v0, v0, v2

    if-nez v0, :cond_12

    .line 124
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: processVerify , trig is ZERO, terminate to verify"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v6, v7

    .line 146
    :cond_11
    :goto_11
    return v6

    .line 128
    :cond_12
    iget-wide v1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    int-to-long v4, p2

    move-object v0, p0

    move-object v3, p1

    invoke-virtual/range {v0 .. v5}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->pipeRecogTest(J[SJ)I

    move-result v6

    .line 129
    .local v6, "iResult":I
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: processVerify, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ", pipeRecogTest, iResult : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v0, 0x2

    if-ne v6, v0, :cond_53

    .line 133
    const/4 v6, 0x0

    .line 135
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    const/4 v2, 0x3

    invoke-virtual {p0, v0, v1, v2, p3}, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->getResultTest(JILjava/lang/String;)I

    move-result v0

    int-to-short v0, v0

    aput-short v0, p4, v7

    .line 136
    aget-short v0, p4, v7

    if-ltz v0, :cond_11

    .line 138
    const/4 v6, 0x1

    goto :goto_11

    .line 143
    :cond_53
    const/4 v6, 0x0

    goto :goto_11
.end method

.method public native resetRecog(J)V
.end method

.method public setSessionValue(J)V
    .registers 8
    .param p1, "lSessionValue"    # J

    .prologue
    const-wide/16 v3, 0x0

    .line 83
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1, p2}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    cmp-long v0, p1, v3

    if-nez v0, :cond_25

    .line 87
    const-string v0, "SensoryUDTSIDEngine"

    const-string v1, "secMM: setSessionValue, Session value(trig) is ZERO"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    :cond_25
    iget-wide v0, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    cmp-long v0, v0, v3

    if-eqz v0, :cond_45

    .line 92
    const-string v0, "SensoryUDTSIDEngine"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "secMM: setSessionValue, trig is not ZERO : "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-wide v2, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_45
    iput-wide p1, p0, Lcom/sensoryinc/fluentsoftsdk/SensoryUDTSIDEngine;->m_lSessionValue:J

    .line 97
    return-void
.end method

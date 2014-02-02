.class public Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;
.super Ljava/lang/Object;
.source "SamsungPolicyProperties.java"


# static fields
.field private static mHasNumericKeyboard:Z

.field private static mHasNumericKeyboardChecked:Z

.field private static mHasQwertyKeyboard:Z

.field private static mHasQwertyKeyboardChecked:Z

.field private static mHasSPenFeature:Z

.field private static mHasSPenFeatureChecked:Z

.field private static mPendingThresholdTime:I

.field private static mPendingThresholdTimeChecked:Z

.field private static mScreenShotChordEnableChecked:Z

.field private static mScreenShotChordEnabled:Z

.field private static mVoiceTalkDefaultLaunch:Z

.field private static mVoiceTalkDefaultLaunchChecked:Z


# direct methods
.method static constructor <clinit>()V
    .registers 2

    .prologue
    const/4 v1, 0x0

    .line 41
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    .line 42
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 44
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 45
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 47
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 48
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 50
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 51
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 56
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    .line 57
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 59
    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    .line 60
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    return-void
.end method

.method public constructor <init>()V
    .registers 1

    .prologue
    .line 40
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dump(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;Landroid/content/Context;)V
    .registers 5
    .param p0, "prefix"    # Ljava/lang/String;
    .param p1, "pw"    # Ljava/io/PrintWriter;
    .param p2, "args"    # [Ljava/lang/String;
    .param p3, "context"    # Landroid/content/Context;

    .prologue
    .line 238
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isVoiceTalkDefaultLaunch="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 239
    const-string v0, " isCameraSpecialized="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isCameraSpecialized()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 240
    const-string v0, " isUseVibetonz="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isUseVibetonz()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 241
    const-string v0, " hasSPenFeature="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasSPenFeature(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 242
    const-string v0, " hasQwertyKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasQwertyKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 243
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "hasNumericKeyboard="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 244
    const-string v0, " isScreenShotChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenShotChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 245
    const-string v0, " isScreenRecordChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isScreenRecordChordEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 246
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "isOneTouchReportChordEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isOneTouchReportChordEnabled(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 247
    const-string v0, " isSupportSPC="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportSPC()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 248
    const-string v0, " isSupportDMBAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDMBAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 249
    const-string v0, " isSupportDTVAntennaDetach="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isSupportDTVAntennaDetach()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 250
    const-string v0, " isBlockHomeKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {p3}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isBlockHomeKey(Landroid/content/Context;)Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 251
    invoke-virtual {p1, p0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    const-string v0, "needInitializationWhenSystemReady="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->needInitializationWhenSystemReady()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 252
    const-string v0, " getKeyPendingThresholdTime="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->getKeyPendingThresholdTime()I

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(I)V

    .line 253
    const-string v0, " isDualSIMMode="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isDualSIMMode()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 254
    const-string v0, " isStatusBarHoverOpenEnabled="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isStatusBarHoverOpenEnabled()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Z)V

    .line 255
    const-string v0, " hasHardMenuBackKey="

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->print(Ljava/lang/String;)V

    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasHardMenuBackKey()Z

    move-result v0

    invoke-virtual {p1, v0}, Ljava/io/PrintWriter;->println(Z)V

    .line 256
    return-void
.end method

.method public static getKeyPendingThresholdTime()I
    .registers 2

    .prologue
    .line 180
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    if-nez v1, :cond_f

    .line 182
    :try_start_4
    const-string v1, "0"

    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I
    :try_end_c
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_c} :catch_12

    .line 187
    .local v0, "e":Ljava/lang/Exception;
    :goto_c
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTimeChecked:Z

    .line 189
    :cond_f
    sget v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    return v1

    .line 184
    .end local v0    # "e":Ljava/lang/Exception;
    :catch_12
    move-exception v0

    .line 185
    .restart local v0    # "e":Ljava/lang/Exception;
    const/4 v1, 0x0

    sput v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mPendingThresholdTime:I

    goto :goto_c
.end method

.method public static hasHardMenuBackKey()Z
    .registers 1

    .prologue
    .line 222
    const/4 v0, 0x0

    return v0
.end method

.method public static hasNumericKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 114
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 115
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x3

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    .line 117
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboardChecked:Z

    .line 119
    :cond_17
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasNumericKeyboard:Z

    return v0

    .line 115
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasQwertyKeyboard(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x1

    .line 105
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    if-nez v0, :cond_17

    .line 106
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->keyboard:I

    const/4 v2, 0x2

    if-ne v0, v2, :cond_1a

    move v0, v1

    :goto_13
    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    .line 108
    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboardChecked:Z

    .line 110
    :cond_17
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasQwertyKeyboard:Z

    return v0

    .line 106
    :cond_1a
    const/4 v0, 0x0

    goto :goto_13
.end method

.method public static hasSPenFeature(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 93
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    if-nez v0, :cond_13

    .line 94
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    const-string v1, "com.sec.feature.spen_usp"

    invoke-virtual {v0, v1}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    .line 95
    const/4 v0, 0x1

    sput-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeatureChecked:Z

    .line 97
    :cond_13
    sget-boolean v0, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mHasSPenFeature:Z

    return v0
.end method

.method public static isBlockHomeKey(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v0, 0x1

    .line 160
    const-string v1, "LGT"

    const-string v2, ""

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3a

    .line 161
    const-string v1, "true"

    const-string v2, "ril.domesticOtaStart"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    const-string v1, "18"

    const-string v2, "ril.simtype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_28

    .line 172
    :cond_27
    :goto_27
    return v0

    .line 166
    :cond_28
    const-string v1, "lock"

    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "missing_phone_lock"

    invoke-static {v2, v3}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_27

    .line 172
    :cond_3a
    const/4 v0, 0x0

    goto :goto_27
.end method

.method public static isCameraKeyWakeKey(Landroid/content/Context;)Z
    .registers 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 215
    invoke-static {}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->isMirrorLessCameraSpecialized()Z

    move-result v0

    if-nez v0, :cond_c

    invoke-static {p0}, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->hasNumericKeyboard(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_e

    .line 216
    :cond_c
    const/4 v0, 0x1

    .line 218
    :goto_d
    return v0

    :cond_e
    const/4 v0, 0x0

    goto :goto_d
.end method

.method public static isCameraSpecialized()Z
    .registers 1

    .prologue
    .line 77
    const/4 v0, 0x0

    return v0
.end method

.method public static isDisablePopupUI()Z
    .registers 1

    .prologue
    .line 89
    const/4 v0, 0x0

    return v0
.end method

.method public static isDualSIMMode()Z
    .registers 1

    .prologue
    .line 194
    const/4 v0, 0x0

    return v0
.end method

.method public static isMirrorLessCameraSpecialized()Z
    .registers 1

    .prologue
    .line 81
    const/4 v0, 0x0

    return v0
.end method

.method public static isOneTouchReportChordEnabled(Landroid/content/Context;)Z
    .registers 3
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 142
    invoke-static {}, Lcom/sec/android/app/CscFeature;->getInstance()Lcom/sec/android/app/CscFeature;

    move-result-object v0

    const-string v1, "CscFeature_Common_EnableOneTouchReport"

    invoke-virtual {v0, v1}, Lcom/sec/android/app/CscFeature;->getEnableStatus(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public static isScreenRecordChordEnabled()Z
    .registers 1

    .prologue
    .line 137
    const/4 v0, 0x0

    return v0
.end method

.method public static isScreenShotChordEnabled(Landroid/content/Context;)Z
    .registers 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 123
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    if-nez v1, :cond_14

    .line 125
    :try_start_4
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x111001e

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z
    :try_end_11
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_4 .. :try_end_11} :catch_17

    .line 131
    :goto_11
    const/4 v1, 0x1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnableChecked:Z

    .line 133
    :cond_14
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    return v1

    .line 127
    :catch_17
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mScreenShotChordEnabled:Z

    goto :goto_11
.end method

.method public static isStarKeyToVibrationMode()Z
    .registers 2

    .prologue
    .line 226
    const-string v0, "KOR"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static isStatusBarHoverOpenEnabled()Z
    .registers 1

    .prologue
    .line 201
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportCameraQuickShot()Z
    .registers 1

    .prologue
    .line 234
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDMBAntennaDetach()Z
    .registers 1

    .prologue
    .line 151
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportDTVAntennaDetach()Z
    .registers 1

    .prologue
    .line 155
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportEasyOneHand()Z
    .registers 1

    .prologue
    .line 210
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportFingerPrint()Z
    .registers 1

    .prologue
    .line 230
    const/4 v0, 0x0

    return v0
.end method

.method public static isSupportGestureWithIRSensor()Z
    .registers 1

    .prologue
    .line 205
    const/4 v0, 0x1

    return v0
.end method

.method public static isSupportSPC()Z
    .registers 1

    .prologue
    .line 147
    const/4 v0, 0x0

    return v0
.end method

.method public static isUseVibetonz()Z
    .registers 1

    .prologue
    .line 101
    const/4 v0, 0x1

    return v0
.end method

.method public static isVoiceTalkDefaultLaunch(Landroid/content/Context;)Z
    .registers 5
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    .line 63
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    if-nez v1, :cond_14

    .line 65
    :try_start_5
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110052

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    sput-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z
    :try_end_12
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_5 .. :try_end_12} :catch_17

    .line 71
    :goto_12
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunchChecked:Z

    .line 73
    :cond_14
    sget-boolean v1, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    return v1

    .line 67
    :catch_17
    move-exception v0

    .line 69
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    sput-boolean v3, Lcom/android/internal/policy/impl/sec/SamsungPolicyProperties;->mVoiceTalkDefaultLaunch:Z

    goto :goto_12
.end method

.method public static isWatchSpecialized()Z
    .registers 1

    .prologue
    .line 85
    const/4 v0, 0x0

    return v0
.end method

.method public static isWearableHMTSupported()Z
    .registers 1

    .prologue
    .line 260
    const/4 v0, 0x1

    return v0
.end method

.method public static needInitializationWhenSystemReady()Z
    .registers 2

    .prologue
    .line 176
    const-string v0, "LGT"

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

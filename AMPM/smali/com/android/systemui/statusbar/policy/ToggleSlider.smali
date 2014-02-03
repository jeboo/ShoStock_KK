.class public Lcom/android/systemui/statusbar/policy/ToggleSlider;
.super Landroid/widget/RelativeLayout;
.source "ToggleSlider.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;
.implements Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;,
        Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;
    }
.end annotation


# static fields
.field private static final AUTO_BRIGHTNESS_DETAIL_STEP:I = 0x19

.field private static final TAG:Ljava/lang/String; = "StatusBar.ToggleSlider"


# instance fields
.field private mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

.field private mBrightnessIcon:Landroid/widget/ImageView;

.field private mBrightnessIconGroup:Landroid/widget/FrameLayout;

.field private mIsTogglePressed:Z

.field private mLabel:Landroid/widget/TextView;

.field private mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

.field private mSlider:Landroid/widget/SeekBar;

.field private mSliderLayout:Landroid/widget/LinearLayout;

.field private mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

.field private mTracking:Z

.field private mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

.field private mTwSliderLayout:Landroid/widget/LinearLayout;

.field private mTwSliderText:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 88
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 89
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 92
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 93
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 11
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 96
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/RelativeLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseJellyBeanGUI:Z

    if-eqz v7, :cond_2

    .line 98
    const v7, 0x7f04000a

    invoke-static {p1, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 102
    :goto_0
    sget-object v7, Lcom/android/systemui/R$styleable;->ToggleSlider:[I

    const/4 v8, 0x0

    invoke-virtual {p1, p2, v7, p3, v8}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 105
    .local v0, a:Landroid/content/res/TypedArray;
    const v7, 0x7f070016

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    .line 106
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnCheckedChangeListener(Lcom/sec/android/touchwiz/widget/TwCompoundButton$OnCheckedChangeListener;)V

    .line 108
    const v7, 0x7f07001c

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    .line 109
    const v7, 0x7f07001d

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/SeekBar;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    .line 110
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 112
    const-string v3, ""

    .line 113
    .local v3, brightnessText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00c2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 114
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x64

    iget-object v9, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v9}, Landroid/widget/SeekBar;->getMax()I

    move-result v9

    div-int/2addr v8, v9

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "%"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 115
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v7, v3}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 117
    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 118
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 119
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    const v7, 0x7f07001e

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/LinearLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    .line 123
    const v7, 0x7f070020

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    .line 124
    const v7, 0x7f07001f

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    .line 125
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 126
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_0

    .line 127
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setQuickPanleInstance(Z)V

    .line 130
    :cond_0
    const-string v2, ""

    .line 131
    .local v2, autoBrightnessText:Ljava/lang/String;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0025

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a00c2

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a0179

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 135
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v7

    const/4 v8, 0x5

    if-ge v7, v8, :cond_3

    .line 136
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f0a017a

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 140
    :goto_1
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v7, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 142
    const v7, 0x7f070018

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/FrameLayout;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIconGroup:Landroid/widget/FrameLayout;

    .line 143
    const v7, 0x7f07001a

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    .line 144
    const v7, 0x7f070019

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    .line 149
    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v7, :cond_1

    .line 150
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 151
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setVisibility(I)V

    .line 154
    :cond_1
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v9, "screen_brightness_mode"

    const/4 v10, 0x0

    invoke-static {v7, v9, v10}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_4

    const/4 v7, 0x1

    :goto_2
    invoke-virtual {v8, v7}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 166
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$1;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 184
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    new-instance v8, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;

    invoke-direct {v8, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$2;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    invoke-virtual {v7, v8}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 214
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_5

    sget-boolean v7, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-eqz v7, :cond_5

    .line 216
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 217
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 218
    const/4 v7, 0x1

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    mul-int/lit8 v8, v8, 0x19

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 225
    :goto_3
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "auto_brightness_detail"

    const/16 v9, 0x64

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    div-int/lit8 v7, v7, 0x14

    add-int/lit8 v4, v7, -0x5

    .line 226
    .local v4, defaultProgress:I
    const-string v5, ""

    .line 228
    .local v5, progressValue:Ljava/lang/String;
    if-lez v4, :cond_7

    .line 229
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, "+"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 234
    :goto_4
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v7, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 236
    const v7, 0x7f070017

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/TextView;

    iput-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    .line 237
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x1

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setSelected(Z)V

    .line 238
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setImportantForAccessibility(I)V

    .line 239
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    const/4 v8, 0x0

    invoke-virtual {v0, v8}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 244
    new-instance v6, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;

    invoke-direct {v6, p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;-><init>(Lcom/android/systemui/statusbar/policy/ToggleSlider;)V

    .line 245
    .local v6, touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    const v7, 0x7f070015

    invoke-virtual {p0, v7}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/view/ViewGroup;

    .line 246
    .local v1, autoBrightnessGroup:Landroid/view/ViewGroup;
    if-eqz v1, :cond_8

    .line 247
    invoke-virtual {v1, v6}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 253
    :goto_5
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 254
    return-void

    .line 100
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #autoBrightnessGroup:Landroid/view/ViewGroup;
    .end local v2           #autoBrightnessText:Ljava/lang/String;
    .end local v3           #brightnessText:Ljava/lang/String;
    .end local v4           #defaultProgress:I
    .end local v5           #progressValue:Ljava/lang/String;
    .end local v6           #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_2
    const v7, 0x7f040020

    invoke-static {p1, v7, p0}, Landroid/view/View;->inflate(Landroid/content/Context;ILandroid/view/ViewGroup;)Landroid/view/View;

    goto/16 :goto_0

    .line 138
    .restart local v0       #a:Landroid/content/res/TypedArray;
    .restart local v2       #autoBrightnessText:Ljava/lang/String;
    .restart local v3       #brightnessText:Ljava/lang/String;
    :cond_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v8}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    goto/16 :goto_1

    .line 154
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_2

    .line 220
    :cond_5
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    const/4 v8, 0x0

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 221
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    const/16 v8, 0x8

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 222
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    invoke-virtual {v7}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    const-string v8, "screen_brightness_mode"

    const/4 v9, 0x0

    invoke-static {v7, v8, v9}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v7

    if-eqz v7, :cond_6

    const/4 v7, 0x1

    :goto_6
    iget-object v8, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v8}, Landroid/widget/SeekBar;->getProgress()I

    move-result v8

    invoke-direct {p0, v7, v8}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto/16 :goto_3

    :cond_6
    const/4 v7, 0x0

    goto :goto_6

    .line 231
    .restart local v4       #defaultProgress:I
    .restart local v5       #progressValue:Ljava/lang/String;
    :cond_7
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_4

    .line 249
    .restart local v1       #autoBrightnessGroup:Landroid/view/ViewGroup;
    .restart local v6       #touchListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$TouchListener;
    :cond_8
    iget-object v7, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v7, v6}, Landroid/widget/TextView;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    goto :goto_5
.end method

.method static synthetic access$002(Lcom/android/systemui/statusbar/policy/ToggleSlider;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 58
    iput-boolean p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    return p1
.end method

.method static synthetic access$100(Lcom/android/systemui/statusbar/policy/ToggleSlider;)Lcom/sec/android/touchwiz/widget/TwCheckBox;
    .locals 1
    .parameter "x0"

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    return-object v0
.end method

.method private updateIcon(ZI)V
    .locals 3
    .parameter "automatic"
    .parameter "value"

    .prologue
    .line 427
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-nez v0, :cond_1

    .line 428
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mBrightnessIcon:Landroid/widget/ImageView;

    if-eqz p1, :cond_0

    const v0, 0x7f020044

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 439
    :goto_1
    return-void

    .line 428
    :cond_0
    const v0, 0x7f020043

    goto :goto_0

    .line 433
    :cond_1
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    invoke-virtual {v0, p2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setValue(I)V

    .line 435
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mAnimIcon:Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;

    if-eqz p1, :cond_2

    const v0, 0x7f020042

    :goto_2
    const/4 v2, 0x0

    invoke-virtual {v1, v0, v2}, Lcom/android/systemui/statusbar/AnimatedBrightnessIconView;->setIcon(IZ)V

    goto :goto_1

    :cond_2
    const v0, 0x7f020041

    goto :goto_2
.end method


# virtual methods
.method public hideToggle()V
    .locals 5

    .prologue
    const/16 v4, 0x8

    const/4 v3, -0x2

    .line 505
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2, v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setVisibility(I)V

    .line 506
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setVisibility(I)V

    .line 507
    const v2, 0x7f070015

    invoke-virtual {p0, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 508
    .local v0, autoBrightnessGroup:Landroid/view/ViewGroup;
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/ViewGroup;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 510
    new-instance v1, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v1, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 512
    .local v1, params:Landroid/widget/LinearLayout$LayoutParams;
    const/high16 v2, 0x41f0

    iput v2, v1, Landroid/widget/LinearLayout$LayoutParams;->weight:F

    .line 513
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v1}, Landroid/widget/SeekBar;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 514
    return-void
.end method

.method public isChecked()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v0

    return v0
.end method

.method public onCheckedChanged(Lcom/sec/android/touchwiz/widget/TwCompoundButton;Z)V
    .locals 4
    .parameter "toggle"
    .parameter "checked"

    .prologue
    const/4 v2, 0x0

    const/16 v1, 0x8

    const/4 v3, 0x0

    .line 257
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 259
    sget-boolean v0, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v0, :cond_1

    .line 260
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 261
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_0

    .line 262
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 263
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 291
    :cond_0
    :goto_0
    return-void

    .line 266
    :cond_1
    if-eqz p2, :cond_3

    .line 267
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 268
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 269
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, v2}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 271
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 272
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_2

    .line 273
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 274
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 276
    :cond_2
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v0

    mul-int/lit8 v0, v0, 0x19

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0

    .line 278
    :cond_3
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v3}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 279
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderLayout:Landroid/widget/LinearLayout;

    invoke-virtual {v0, v1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 281
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setOnTwSeekBarChangeListener(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit$OnTwSeekBarChangeListener;)V

    .line 282
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 283
    iget-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    if-eqz v0, :cond_4

    .line 284
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getProgress()I

    move-result v2

    invoke-interface {v0, p0, v1, p2, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 285
    iput-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mIsTogglePressed:Z

    .line 287
    :cond_4
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0}, Landroid/widget/SeekBar;->getProgress()I

    move-result v0

    invoke-direct {p0, p2, v0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    goto :goto_0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 3
    .parameter "newConfig"

    .prologue
    .line 489
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mLabel:Landroid/widget/TextView;

    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mContext:Landroid/content/Context;

    const v2, 0x7f0a0025

    invoke-virtual {v1, v2}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 500
    return-void
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 5
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 294
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v2, :cond_0

    if-eqz p3, :cond_0

    .line 295
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v4}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v4

    invoke-interface {v2, p0, v3, v4, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 297
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_0

    .line 298
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 310
    :cond_0
    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v2, :cond_2

    .line 314
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    .line 315
    .local v1, isChecked:Z
    if-eqz v1, :cond_1

    sget-boolean v2, Lcom/android/systemui/statusbar/Feature;->mUseAutoBrightnessDetail:Z

    if-nez v2, :cond_2

    .line 316
    :cond_1
    invoke-direct {p0, v1, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 320
    .end local v1           #isChecked:Z
    :cond_2
    const-string v0, ""

    .line 321
    .local v0, brightnessText:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0a00c2

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 322
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v3}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    mul-int/lit8 v3, v3, 0x64

    iget-object v4, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v4}, Landroid/widget/SeekBar;->getMax()I

    move-result v4

    div-int/2addr v3, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "%"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 323
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v2, v0}, Landroid/widget/SeekBar;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 324
    return-void
.end method

.method public onProgressChanged(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;IZ)V
    .locals 4
    .parameter "seekBar"
    .parameter "progress"
    .parameter "fromUser"

    .prologue
    .line 328
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v1, :cond_0

    if-eqz p3, :cond_0

    .line 329
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v3, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v3}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v3

    invoke-interface {v1, p0, v2, v3, p2}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 330
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getSplitProgress()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 333
    :cond_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v1

    if-eqz v1, :cond_1

    sget-boolean v1, Lcom/android/systemui/statusbar/Feature;->mUseAnimatedBrightnessIcon:Z

    if-eqz v1, :cond_1

    .line 334
    const/4 v1, 0x1

    mul-int/lit8 v2, p2, 0x19

    invoke-direct {p0, v1, v2}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->updateIcon(ZI)V

    .line 336
    :cond_1
    const-string v0, ""

    .line 337
    .local v0, brightnessText:Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0025

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a00c2

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a0179

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 341
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v1

    const/4 v2, 0x5

    if-ge v1, v2, :cond_2

    .line 342
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/systemui/statusbar/policy/ToggleSlider;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f0a017a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 346
    :goto_0
    iget-object v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v1, v0}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 347
    return-void

    .line 344
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 351
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 352
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 353
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 355
    :cond_0
    return-void
.end method

.method public onStartTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 359
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 360
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 363
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 367
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 368
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Landroid/widget/SeekBar;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 371
    :cond_0
    return-void
.end method

.method public onStopTrackingTouch(Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;)V
    .locals 4
    .parameter "seekBar"

    .prologue
    .line 375
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    .line 376
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    iget-boolean v1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTracking:Z

    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v2}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->isChecked()Z

    move-result v2

    invoke-virtual {p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->getProgress()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;->onChanged(Lcom/android/systemui/statusbar/policy/ToggleSlider;ZZI)V

    .line 379
    :cond_0
    return-void
.end method

.method public setChecked(Z)V
    .locals 1
    .parameter "checked"

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mToggle:Lcom/sec/android/touchwiz/widget/TwCheckBox;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwCheckBox;->setChecked(Z)V

    .line 388
    return-void
.end method

.method public setMax(I)V
    .locals 1
    .parameter "max"

    .prologue
    .line 395
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 396
    return-void
.end method

.method public setOnChangedListener(Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 383
    iput-object p1, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mListener:Lcom/android/systemui/statusbar/policy/ToggleSlider$Listener;

    .line 384
    return-void
.end method

.method public setSplitMax(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 404
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setRange(I)V

    .line 405
    return-void
.end method

.method public setSplitText(I)V
    .locals 4
    .parameter "value"

    .prologue
    .line 413
    add-int/lit8 v0, p1, -0x5

    .line 414
    .local v0, progress:I
    const-string v1, ""

    .line 416
    .local v1, progressValue:Ljava/lang/String;
    if-lez v0, :cond_0

    .line 417
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "+"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 422
    :goto_0
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 423
    iget-object v2, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSliderText:Landroid/widget/TextView;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setSingleLine(Z)V

    .line 424
    return-void

    .line 419
    :cond_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    goto :goto_0
.end method

.method public setSplitValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 408
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mTwSlider:Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;

    invoke-virtual {v0, p1}, Lcom/sec/android/touchwiz/widget/TwSeekBarSplit;->setProgress(I)V

    .line 409
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .parameter "value"

    .prologue
    .line 399
    iget-object v0, p0, Lcom/android/systemui/statusbar/policy/ToggleSlider;->mSlider:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 400
    return-void
.end method

.class public Lcom/android/calendar/SpeedDialLayout;
.super Landroid/widget/FrameLayout;
.source "SpeedDialLayout.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;,
        Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;
    }
.end annotation


# static fields
.field private static final ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private currentAnimator:Landroid/animation/Animator;

.field private endSpeedDialFadeOutListener:Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;

.field private final eventView:Landroid/view/View;

.field private final extraItemFadeInDelay:J

.field private final fadeInDuration:I

.field private final fadeLayer:Landroid/view/View;

.field private final fadeOutDuration:I

.field private isExpanded:Z

.field private isInAccessibilityMode:Z

.field private final pulseDuration:I

.field private final pulseScale:F

.field private smallButtonToPulseContainerId:Ljava/lang/Integer;

.field private final speedDialActivity:Ljava/lang/ref/WeakReference;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ref/WeakReference",
            "<",
            "Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;",
            ">;"
        }
    .end annotation
.end field

.field private final speedDialContents:Landroid/view/ViewGroup;

.field private final taskTranslationY:I

.field private final titleFadeInDelay:I

.field private final translationYDistance:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/android/calendar/SpeedDialLayout;

    invoke-static {v0}, Lcom/android/calendarcommon2/LogUtils;->getLogTag(Ljava/lang/Class;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/SpeedDialLayout;->TAG:Ljava/lang/String;

    .line 64
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    sput-object v0, Lcom/android/calendar/SpeedDialLayout;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 66
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    sput-object v0, Lcom/android/calendar/SpeedDialLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 68
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    sput-object v0, Lcom/android/calendar/SpeedDialLayout;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    .line 70
    new-instance v0, Landroid/view/animation/AccelerateDecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    sput-object v0, Lcom/android/calendar/SpeedDialLayout;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 96
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/SpeedDialLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 97
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4

    .prologue
    .line 100
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 103
    invoke-virtual {p0}, Lcom/android/calendar/SpeedDialLayout;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 104
    sget v1, Lcom/android/calendar/R$dimen;->speed_dial_small_button_translation_y:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->taskTranslationY:I

    .line 105
    sget v1, Lcom/android/calendar/R$dimen;->speed_dial_small_button_translation_y_delta:I

    .line 106
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelOffset(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->translationYDistance:I

    .line 107
    sget v1, Lcom/android/calendar/R$integer;->speed_dial_fade_in_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->fadeInDuration:I

    .line 108
    sget v1, Lcom/android/calendar/R$integer;->speed_dial_fade_out_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->fadeOutDuration:I

    .line 109
    sget v1, Lcom/android/calendar/R$integer;->speed_dial_title_fade_in_delay_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->titleFadeInDelay:I

    .line 110
    sget v1, Lcom/android/calendar/R$integer;->speed_dial_extra_fade_in_delay_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    int-to-long v2, v1

    iput-wide v2, p0, Lcom/android/calendar/SpeedDialLayout;->extraItemFadeInDelay:J

    .line 111
    sget v1, Lcom/android/calendar/R$integer;->speed_dial_pulse_ms:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/calendar/SpeedDialLayout;->pulseDuration:I

    .line 112
    sget v1, Lcom/android/calendar/R$dimen;->speed_dial_small_button_pulse_max_size:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v1

    sget v2, Lcom/android/calendar/R$dimen;->mini_fab_button_size:I

    .line 113
    invoke-virtual {v0, v2}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v0

    div-float v0, v1, v0

    iput v0, p0, Lcom/android/calendar/SpeedDialLayout;->pulseScale:F

    .line 115
    invoke-static {p1}, Lcom/android/calendar/Utils;->isAccessibilityEnabled(Landroid/content/Context;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout;->isInAccessibilityMode:Z

    .line 118
    const-string v0, "layout_inflater"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iget-boolean v1, p0, Lcom/android/calendar/SpeedDialLayout;->isInAccessibilityMode:Z

    if-eqz v1, :cond_1

    .line 119
    sget v1, Lcom/android/calendar/R$layout;->speed_dial_a11y_body:I

    .line 118
    :goto_0
    invoke-virtual {v0, v1, p0}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    .line 121
    sget v0, Lcom/android/calendar/R$id;->fade_layer:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    .line 122
    sget v0, Lcom/android/calendar/R$id;->speed_dial_expanded_contents:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialContents:Landroid/view/ViewGroup;

    .line 123
    sget v0, Lcom/android/calendar/R$id;->speed_dial_event_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    .line 124
    sget v0, Lcom/android/calendar/R$id;->speed_dial_task_container:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 125
    sget v1, Lcom/android/calendar/R$id;->speed_dial_groove_container:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 127
    invoke-static {p1}, Lcom/android/calendar/groove/GrooveUtils;->getGrooveSupportedCalendar(Landroid/content/Context;)Lcom/android/calendar/timely/data/CalendarItem;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 128
    new-instance v2, Lcom/android/calendar/SpeedDialLayout$1;

    invoke-direct {v2, p0}, Lcom/android/calendar/SpeedDialLayout$1;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 142
    :goto_1
    instance-of v1, p1, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;

    if-eqz v1, :cond_3

    .line 143
    new-instance v1, Ljava/lang/ref/WeakReference;

    check-cast p1, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;

    invoke-direct {v1, p1}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    .line 149
    :goto_2
    iget-object v1, p0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    new-instance v2, Lcom/android/calendar/SpeedDialLayout$2;

    invoke-direct {v2, p0}, Lcom/android/calendar/SpeedDialLayout$2;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 156
    iget-boolean v1, p0, Lcom/android/calendar/SpeedDialLayout;->isInAccessibilityMode:Z

    if-eqz v1, :cond_0

    .line 157
    sget v1, Lcom/android/calendar/R$id;->speed_dial_cancel_container:I

    invoke-virtual {p0, v1}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 158
    new-instance v2, Lcom/android/calendar/SpeedDialLayout$3;

    invoke-direct {v2, p0}, Lcom/android/calendar/SpeedDialLayout$3;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 166
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    new-instance v2, Lcom/android/calendar/SpeedDialLayout$4;

    invoke-direct {v2, p0}, Lcom/android/calendar/SpeedDialLayout$4;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v1, v2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 175
    new-instance v1, Lcom/android/calendar/SpeedDialLayout$5;

    invoke-direct {v1, p0}, Lcom/android/calendar/SpeedDialLayout$5;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 184
    const/16 v0, 0x8

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->setVisibility(I)V

    .line 185
    return-void

    .line 119
    :cond_1
    sget v1, Lcom/android/calendar/R$layout;->speed_dial_body:I

    goto :goto_0

    .line 138
    :cond_2
    iget-object v2, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialContents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    goto :goto_1

    .line 145
    :cond_3
    sget-object v1, Lcom/android/calendar/SpeedDialLayout;->TAG:Ljava/lang/String;

    const-string v2, "Activity not set."

    const/4 v3, 0x0

    new-array v3, v3, [Ljava/lang/Object;

    invoke-static {v1, v2, v3}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    .line 146
    new-instance v1, Ljava/lang/ref/WeakReference;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    iput-object v1, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    goto :goto_2
.end method

.method static synthetic access$000(Lcom/android/calendar/SpeedDialLayout;)Ljava/lang/ref/WeakReference;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/calendar/SpeedDialLayout;)Landroid/view/View;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/calendar/SpeedDialLayout;Ljava/util/List;I)V
    .locals 0

    .prologue
    .line 36
    invoke-direct {p0, p1, p2}, Lcom/android/calendar/SpeedDialLayout;->setLayerTypeOnAllViewTargets(Ljava/util/List;I)V

    return-void
.end method

.method static synthetic access$302(Lcom/android/calendar/SpeedDialLayout;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0

    .prologue
    .line 36
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/calendar/SpeedDialLayout;)Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->endSpeedDialFadeOutListener:Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;

    return-object v0
.end method

.method private addRotationAnimation(Ljava/util/Collection;Landroid/widget/ImageView;ZI)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Collection",
            "<",
            "Landroid/animation/Animator;",
            ">;",
            "Landroid/widget/ImageView;",
            "ZI)V"
        }
    .end annotation

    .prologue
    const/16 v2, 0x2710

    const/4 v1, 0x0

    .line 217
    if-nez p2, :cond_1

    .line 232
    :cond_0
    :goto_0
    return-void

    .line 220
    :cond_1
    invoke-virtual {p2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    .line 221
    instance-of v0, v3, Landroid/graphics/drawable/RotateDrawable;

    if-eqz v0, :cond_0

    .line 224
    if-eqz p3, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Landroid/graphics/drawable/Drawable;->setLevel(I)Z

    .line 225
    const-string v4, "level"

    const/4 v0, 0x2

    new-array v5, v0, [I

    if-eqz p3, :cond_3

    move v0, v1

    .line 227
    :goto_2
    aput v0, v5, v1

    const/4 v0, 0x1

    if-eqz p3, :cond_4

    .line 228
    :goto_3
    aput v2, v5, v0

    .line 225
    invoke-static {v3, v4, v5}, Landroid/animation/ObjectAnimator;->ofInt(Ljava/lang/Object;Ljava/lang/String;[I)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 229
    int-to-long v2, p4

    invoke-virtual {v0, v2, v3}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 230
    sget-object v1, Lcom/android/calendar/SpeedDialLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v1}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 231
    invoke-interface {p1, v0}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_2
    move v0, v2

    .line 224
    goto :goto_1

    :cond_3
    move v0, v2

    .line 227
    goto :goto_2

    :cond_4
    move v2, v1

    .line 228
    goto :goto_3
.end method

.method private createAnimator(Z)Landroid/animation/Animator;
    .locals 18

    .prologue
    .line 236
    new-instance v13, Ljava/util/ArrayList;

    invoke-direct {v13}, Ljava/util/ArrayList;-><init>()V

    .line 238
    if-eqz p1, :cond_3

    .line 239
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/SpeedDialLayout;->fadeInDuration:I

    move v12, v2

    .line 241
    :goto_0
    if-eqz p1, :cond_4

    .line 242
    sget-object v2, Lcom/android/calendar/SpeedDialLayout;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v3, v2

    .line 246
    :goto_1
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 247
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v2}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;

    invoke-interface {v2}, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;->getFloatingActionButton()Landroid/widget/ImageButton;

    move-result-object v2

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1, v12}, Lcom/android/calendar/SpeedDialLayout;->addRotationAnimation(Ljava/util/Collection;Landroid/widget/ImageView;ZI)V

    .line 250
    :cond_0
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    sget v4, Lcom/android/calendar/R$id;->speed_dial_icon:I

    invoke-virtual {v2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v0, v13, v2, v1, v12}, Lcom/android/calendar/SpeedDialLayout;->addRotationAnimation(Ljava/util/Collection;Landroid/widget/ImageView;ZI)V

    .line 254
    const/4 v8, 0x0

    .line 255
    const-wide/16 v4, 0x0

    .line 258
    new-instance v14, Ljava/util/ArrayList;

    invoke-direct {v14}, Ljava/util/ArrayList;-><init>()V

    .line 259
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/calendar/SpeedDialLayout;->isInAccessibilityMode:Z

    if-nez v2, :cond_10

    .line 260
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->speedDialContents:Landroid/view/ViewGroup;

    invoke-virtual {v2}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v2

    .line 261
    add-int/lit8 v2, v2, -0x1

    move v9, v2

    move-wide v10, v4

    :goto_2
    if-ltz v9, :cond_10

    .line 262
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->speedDialContents:Landroid/view/ViewGroup;

    invoke-virtual {v2, v9}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v7

    .line 263
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    if-ne v7, v2, :cond_5

    const/4 v2, 0x1

    move v4, v2

    .line 264
    :goto_3
    sget v2, Lcom/android/calendar/R$id;->speed_dial_title:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v15

    .line 265
    sget v2, Lcom/android/calendar/R$id;->speed_dial_icon:I

    invoke-virtual {v7, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/ImageView;

    .line 267
    invoke-interface {v14, v15}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 268
    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 270
    move/from16 v0, p1

    invoke-virtual {v7, v0}, Landroid/view/View;->setClickable(Z)V

    .line 274
    if-eqz v4, :cond_6

    .line 277
    const/4 v6, 0x0

    .line 278
    const/4 v5, 0x0

    move v8, v6

    .line 287
    :goto_4
    if-eqz p1, :cond_1

    .line 288
    invoke-virtual {v7, v5}, Landroid/view/View;->setTranslationY(F)V

    .line 289
    const-string v6, "translationY"

    const/16 v16, 0x2

    move/from16 v0, v16

    new-array v0, v0, [F

    move-object/from16 v16, v0

    const/16 v17, 0x0

    aput v5, v16, v17

    const/4 v5, 0x1

    aput v8, v16, v5

    move-object/from16 v0, v16

    invoke-static {v7, v6, v0}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 291
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 292
    int-to-long v6, v12

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 293
    sget-object v6, Lcom/android/calendar/SpeedDialLayout;->FAST_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v5, v6}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 294
    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 298
    :cond_1
    if-eqz p1, :cond_7

    const/4 v5, 0x0

    :goto_5
    invoke-virtual {v15, v5}, Landroid/view/View;->setAlpha(F)V

    .line 299
    const-string v6, "alpha"

    const/4 v5, 0x2

    new-array v7, v5, [F

    const/16 v16, 0x0

    if-eqz p1, :cond_8

    .line 301
    const/4 v5, 0x0

    :goto_6
    aput v5, v7, v16

    const/16 v16, 0x1

    if-eqz p1, :cond_9

    .line 302
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_7
    aput v5, v7, v16

    .line 299
    invoke-static {v15, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v15

    .line 303
    if-eqz p1, :cond_a

    .line 304
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/SpeedDialLayout;->titleFadeInDelay:I

    :goto_8
    int-to-long v6, v5

    add-long/2addr v6, v10

    .line 303
    invoke-virtual {v15, v6, v7}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 305
    if-eqz p1, :cond_b

    .line 306
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/SpeedDialLayout;->fadeInDuration:I

    move-object/from16 v0, p0

    iget v6, v0, Lcom/android/calendar/SpeedDialLayout;->titleFadeInDelay:I

    sub-int/2addr v5, v6

    int-to-long v6, v5

    .line 305
    :goto_9
    invoke-virtual {v15, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 308
    invoke-virtual {v15, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 309
    invoke-interface {v13, v15}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 312
    if-eqz p1, :cond_c

    const/4 v5, 0x0

    :goto_a
    invoke-virtual {v2, v5}, Landroid/widget/ImageView;->setAlpha(F)V

    .line 313
    const-string v6, "alpha"

    const/4 v5, 0x2

    new-array v7, v5, [F

    const/4 v15, 0x0

    if-eqz p1, :cond_d

    .line 315
    const/4 v5, 0x0

    :goto_b
    aput v5, v7, v15

    const/4 v15, 0x1

    if-eqz p1, :cond_e

    .line 316
    const/high16 v5, 0x3f800000    # 1.0f

    :goto_c
    aput v5, v7, v15

    .line 313
    invoke-static {v2, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    .line 317
    invoke-virtual {v5, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 318
    int-to-long v6, v12

    invoke-virtual {v5, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 319
    invoke-virtual {v5, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 320
    invoke-interface {v13, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 323
    if-eqz p1, :cond_2

    .line 325
    if-nez v4, :cond_2

    .line 326
    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 327
    const v4, 0x3dcccccd    # 0.1f

    invoke-virtual {v2, v4}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 328
    const-string v4, "scaleX"

    const/4 v5, 0x2

    new-array v5, v5, [F

    fill-array-data v5, :array_0

    invoke-static {v2, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v4

    .line 330
    const-string v5, "scaleY"

    const/4 v6, 0x2

    new-array v6, v6, [F

    fill-array-data v6, :array_1

    invoke-static {v2, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 332
    invoke-virtual {v4, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 333
    invoke-virtual {v2, v10, v11}, Landroid/animation/ObjectAnimator;->setStartDelay(J)V

    .line 334
    int-to-long v6, v12

    invoke-virtual {v4, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 335
    int-to-long v6, v12

    invoke-virtual {v2, v6, v7}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 336
    sget-object v5, Lcom/android/calendar/SpeedDialLayout;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v4, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 337
    sget-object v5, Lcom/android/calendar/SpeedDialLayout;->LINEAR_OUT_SLOW_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v5}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 338
    invoke-interface {v13, v4}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 339
    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 344
    :cond_2
    if-eqz p1, :cond_f

    move-object/from16 v0, p0

    iget-wide v4, v0, Lcom/android/calendar/SpeedDialLayout;->extraItemFadeInDelay:J

    :goto_d
    add-long/2addr v4, v10

    .line 261
    add-int/lit8 v2, v9, -0x1

    move v9, v2

    move-wide v10, v4

    goto/16 :goto_2

    .line 240
    :cond_3
    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/calendar/SpeedDialLayout;->fadeOutDuration:I

    move v12, v2

    goto/16 :goto_0

    .line 243
    :cond_4
    sget-object v2, Lcom/android/calendar/SpeedDialLayout;->FAST_OUT_LINEAR_IN_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    move-object v3, v2

    goto/16 :goto_1

    .line 263
    :cond_5
    const/4 v2, 0x0

    move v4, v2

    goto/16 :goto_3

    .line 282
    :cond_6
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/SpeedDialLayout;->taskTranslationY:I

    neg-int v5, v5

    int-to-float v5, v5

    add-float v6, v5, v8

    .line 283
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/SpeedDialLayout;->translationYDistance:I

    int-to-float v5, v5

    add-float/2addr v5, v6

    move v8, v6

    goto/16 :goto_4

    .line 298
    :cond_7
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_5

    .line 301
    :cond_8
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_6

    .line 302
    :cond_9
    const/4 v5, 0x0

    goto/16 :goto_7

    .line 304
    :cond_a
    const/4 v5, 0x0

    goto/16 :goto_8

    .line 307
    :cond_b
    move-object/from16 v0, p0

    iget v5, v0, Lcom/android/calendar/SpeedDialLayout;->fadeOutDuration:I

    int-to-long v6, v5

    goto/16 :goto_9

    .line 312
    :cond_c
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_a

    .line 315
    :cond_d
    const/high16 v5, 0x3f800000    # 1.0f

    goto/16 :goto_b

    .line 316
    :cond_e
    const/4 v5, 0x0

    goto/16 :goto_c

    .line 344
    :cond_f
    const-wide/16 v4, 0x0

    goto :goto_d

    .line 349
    :cond_10
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    invoke-interface {v14, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 350
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    if-eqz p1, :cond_12

    const/4 v2, 0x0

    :goto_e
    invoke-virtual {v4, v2}, Landroid/view/View;->setAlpha(F)V

    .line 351
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    const-string v5, "alpha"

    const/4 v2, 0x2

    new-array v6, v2, [F

    const/4 v7, 0x0

    if-eqz p1, :cond_13

    .line 353
    const/4 v2, 0x0

    :goto_f
    aput v2, v6, v7

    const/4 v7, 0x1

    if-eqz p1, :cond_14

    .line 354
    const/high16 v2, 0x3f800000    # 1.0f

    :goto_10
    aput v2, v6, v7

    .line 351
    invoke-static {v4, v5, v6}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 355
    if-eqz p1, :cond_15

    .line 356
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/SpeedDialLayout;->fadeInDuration:I

    int-to-long v4, v4

    .line 355
    :goto_11
    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 358
    invoke-virtual {v2, v3}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 359
    invoke-interface {v13, v2}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    .line 362
    new-instance v3, Landroid/animation/AnimatorSet;

    invoke-direct {v3}, Landroid/animation/AnimatorSet;-><init>()V

    .line 363
    invoke-virtual {v3, v13}, Landroid/animation/AnimatorSet;->playTogether(Ljava/util/Collection;)V

    .line 365
    if-eqz p1, :cond_11

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/calendar/SpeedDialLayout;->smallButtonToPulseContainerId:Ljava/lang/Integer;

    if-eqz v4, :cond_11

    .line 366
    invoke-direct/range {p0 .. p0}, Lcom/android/calendar/SpeedDialLayout;->createSmallButtonPulseAnimator()Landroid/animation/Animator;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v4

    invoke-virtual {v4, v2}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 369
    :cond_11
    new-instance v2, Lcom/android/calendar/SpeedDialLayout$6;

    move-object/from16 v0, p0

    move/from16 v1, p1

    invoke-direct {v2, v0, v1, v14}, Lcom/android/calendar/SpeedDialLayout$6;-><init>(Lcom/android/calendar/SpeedDialLayout;ZLjava/util/List;)V

    invoke-virtual {v3, v2}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 386
    return-object v3

    .line 350
    :cond_12
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_e

    .line 353
    :cond_13
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_f

    .line 354
    :cond_14
    const/4 v2, 0x0

    goto :goto_10

    .line 357
    :cond_15
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/calendar/SpeedDialLayout;->fadeOutDuration:I

    int-to-long v4, v4

    goto :goto_11

    .line 328
    nop

    :array_0
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data

    .line 330
    :array_1
    .array-data 4
        0x3dcccccd    # 0.1f
        0x3f800000    # 1.0f
    .end array-data
.end method

.method private createFadeInAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 446
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->createAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 447
    new-instance v1, Lcom/android/calendar/SpeedDialLayout$8;

    invoke-direct {v1, p0}, Lcom/android/calendar/SpeedDialLayout$8;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 458
    return-object v0
.end method

.method private createFadeOutAnimator()Landroid/animation/Animator;
    .locals 2

    .prologue
    .line 463
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->createAnimator(Z)Landroid/animation/Animator;

    move-result-object v0

    .line 464
    new-instance v1, Lcom/android/calendar/SpeedDialLayout$9;

    invoke-direct {v1, p0}, Lcom/android/calendar/SpeedDialLayout$9;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v0, v1}, Landroid/animation/Animator;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 474
    return-object v0
.end method

.method private createSmallButtonPulseAnimator()Landroid/animation/Animator;
    .locals 10

    .prologue
    const/4 v6, 0x2

    const/4 v9, 0x1

    const/4 v8, 0x0

    const/high16 v7, 0x3f800000    # 1.0f

    .line 391
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->smallButtonToPulseContainerId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 392
    sget v1, Lcom/android/calendar/R$id;->speed_dial_icon:I

    invoke-virtual {v0, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 396
    const-string v1, "scaleX"

    new-array v2, v6, [F

    aput v7, v2, v8

    iget v3, p0, Lcom/android/calendar/SpeedDialLayout;->pulseScale:F

    aput v3, v2, v9

    invoke-static {v0, v1, v2}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v1

    .line 398
    const-string v2, "scaleY"

    new-array v3, v6, [F

    aput v7, v3, v8

    iget v4, p0, Lcom/android/calendar/SpeedDialLayout;->pulseScale:F

    aput v4, v3, v9

    invoke-static {v0, v2, v3}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v2

    .line 400
    const-string v3, "scaleX"

    new-array v4, v6, [F

    iget v5, p0, Lcom/android/calendar/SpeedDialLayout;->pulseScale:F

    aput v5, v4, v8

    aput v7, v4, v9

    invoke-static {v0, v3, v4}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v3

    .line 402
    const-string v4, "scaleY"

    new-array v5, v6, [F

    iget v6, p0, Lcom/android/calendar/SpeedDialLayout;->pulseScale:F

    aput v6, v5, v8

    aput v7, v5, v9

    invoke-static {v0, v4, v5}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Ljava/lang/String;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 404
    iget v4, p0, Lcom/android/calendar/SpeedDialLayout;->pulseDuration:I

    int-to-long v4, v4

    invoke-virtual {v1, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 405
    iget v4, p0, Lcom/android/calendar/SpeedDialLayout;->pulseDuration:I

    int-to-long v4, v4

    invoke-virtual {v2, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 406
    iget v4, p0, Lcom/android/calendar/SpeedDialLayout;->pulseDuration:I

    int-to-long v4, v4

    invoke-virtual {v3, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 407
    iget v4, p0, Lcom/android/calendar/SpeedDialLayout;->pulseDuration:I

    int-to-long v4, v4

    invoke-virtual {v0, v4, v5}, Landroid/animation/ObjectAnimator;->setDuration(J)Landroid/animation/ObjectAnimator;

    .line 408
    sget-object v4, Lcom/android/calendar/SpeedDialLayout;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v1, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 409
    sget-object v4, Lcom/android/calendar/SpeedDialLayout;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v2, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 410
    sget-object v4, Lcom/android/calendar/SpeedDialLayout;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v3, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 411
    sget-object v4, Lcom/android/calendar/SpeedDialLayout;->ACCELERATE_DECELERATE_INTERPOLATOR:Landroid/animation/TimeInterpolator;

    invoke-virtual {v0, v4}, Landroid/animation/ObjectAnimator;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 414
    new-instance v4, Landroid/animation/AnimatorSet;

    invoke-direct {v4}, Landroid/animation/AnimatorSet;-><init>()V

    .line 415
    invoke-virtual {v4, v1}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v5

    invoke-virtual {v5, v2}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 416
    invoke-virtual {v4, v3}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/animation/AnimatorSet$Builder;->after(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 419
    new-instance v0, Lcom/android/calendar/SpeedDialLayout$7;

    invoke-direct {v0, p0}, Lcom/android/calendar/SpeedDialLayout$7;-><init>(Lcom/android/calendar/SpeedDialLayout;)V

    invoke-virtual {v4, v0}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 440
    return-object v4
.end method

.method private setExpanded(ZJLjava/lang/Integer;)V
    .locals 2

    .prologue
    .line 525
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->speedDialActivity:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/SpeedDialLayout$SpeedDialActivity;

    invoke-static {v0}, Lcom/google/common/base/Preconditions;->checkNotNull(Ljava/lang/Object;)Ljava/lang/Object;

    .line 528
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout;->isExpanded:Z

    if-ne v0, p1, :cond_0

    .line 550
    :goto_0
    return-void

    .line 532
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    if-eqz v0, :cond_1

    .line 533
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->cancel()V

    .line 534
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    .line 537
    :cond_1
    iput-boolean p1, p0, Lcom/android/calendar/SpeedDialLayout;->isExpanded:Z

    .line 540
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout;->isExpanded:Z

    if-eqz v0, :cond_2

    .line 541
    iget-object v1, p0, Lcom/android/calendar/SpeedDialLayout;->fadeLayer:Landroid/view/View;

    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout;->isInAccessibilityMode:Z

    if-nez v0, :cond_4

    const/4 v0, 0x1

    :goto_1
    invoke-virtual {v1, v0}, Landroid/view/View;->setClickable(Z)V

    .line 544
    :cond_2
    iput-object p4, p0, Lcom/android/calendar/SpeedDialLayout;->smallButtonToPulseContainerId:Ljava/lang/Integer;

    .line 545
    if-eqz p1, :cond_5

    invoke-direct {p0}, Lcom/android/calendar/SpeedDialLayout;->createFadeInAnimator()Landroid/animation/Animator;

    move-result-object v0

    :goto_2
    iput-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    .line 546
    const-wide/16 v0, 0x0

    cmp-long v0, p2, v0

    if-lez v0, :cond_3

    .line 547
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0, p2, p3}, Landroid/animation/Animator;->setStartDelay(J)V

    .line 549
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->currentAnimator:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto :goto_0

    .line 541
    :cond_4
    const/4 v0, 0x0

    goto :goto_1

    .line 545
    :cond_5
    invoke-direct {p0}, Lcom/android/calendar/SpeedDialLayout;->createFadeOutAnimator()Landroid/animation/Animator;

    move-result-object v0

    goto :goto_2
.end method

.method private setLayerTypeOnAllViewTargets(Ljava/util/List;I)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/View;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 558
    const/4 v0, 0x0

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    move v1, v0

    :goto_0
    if-ge v1, v2, :cond_0

    .line 559
    invoke-interface {p1, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    const/4 v3, 0x0

    invoke-virtual {v0, p2, v3}, Landroid/view/View;->setLayerType(ILandroid/graphics/Paint;)V

    .line 558
    add-int/lit8 v0, v1, 0x1

    move v1, v0

    goto :goto_0

    .line 561
    :cond_0
    return-void
.end method


# virtual methods
.method public addEndSpeedDialFadeOutListener(Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;)V
    .locals 0

    .prologue
    .line 211
    iput-object p1, p0, Lcom/android/calendar/SpeedDialLayout;->endSpeedDialFadeOutListener:Lcom/android/calendar/SpeedDialLayout$EndSpeedDialFadeOut;

    .line 212
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 4

    .prologue
    const/4 v0, 0x1

    .line 484
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v1

    const/4 v2, 0x4

    if-ne v1, v2, :cond_0

    .line 485
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    if-ne v1, v0, :cond_0

    .line 486
    const-wide/16 v2, 0x0

    invoke-virtual {p0, v2, v3}, Lcom/android/calendar/SpeedDialLayout;->hide(J)V

    .line 489
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v0

    goto :goto_0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1

    .prologue
    .line 190
    const/4 v0, 0x1

    return v0
.end method

.method public hide(J)V
    .locals 3

    .prologue
    .line 512
    const/4 v0, 0x0

    const/4 v1, 0x0

    invoke-direct {p0, v0, p1, p2, v1}, Lcom/android/calendar/SpeedDialLayout;->setExpanded(ZJLjava/lang/Integer;)V

    .line 513
    return-void
.end method

.method public isExpanded()Z
    .locals 1

    .prologue
    .line 493
    iget-boolean v0, p0, Lcom/android/calendar/SpeedDialLayout;->isExpanded:Z

    return v0
.end method

.method public onWindowFocusChanged(Z)V
    .locals 1

    .prologue
    .line 195
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onWindowFocusChanged(Z)V

    .line 196
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 197
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->smallButtonToPulseContainerId:Ljava/lang/Integer;

    if-eqz v0, :cond_1

    .line 198
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->smallButtonToPulseContainerId:Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/SpeedDialLayout;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 199
    if-eqz v0, :cond_0

    .line 200
    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 201
    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    .line 208
    :cond_0
    :goto_0
    return-void

    .line 204
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 205
    iget-object v0, p0, Lcom/android/calendar/SpeedDialLayout;->eventView:Landroid/view/View;

    invoke-static {v0}, Lcom/android/calendar/Utils;->requestAccessibilityFocus(Landroid/view/View;)V

    goto :goto_0
.end method

.method public restoreExpanded(Ljava/lang/Integer;)V
    .locals 0

    .prologue
    .line 554
    invoke-virtual {p0, p1}, Lcom/android/calendar/SpeedDialLayout;->show(Ljava/lang/Integer;)V

    .line 555
    return-void
.end method

.method public show(Ljava/lang/Integer;)V
    .locals 4

    .prologue
    .line 503
    const/4 v0, 0x1

    const-wide/16 v2, 0x0

    invoke-direct {p0, v0, v2, v3, p1}, Lcom/android/calendar/SpeedDialLayout;->setExpanded(ZJLjava/lang/Integer;)V

    .line 504
    return-void
.end method

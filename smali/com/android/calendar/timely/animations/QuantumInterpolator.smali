.class public Lcom/android/calendar/timely/animations/QuantumInterpolator;
.super Ljava/lang/Object;
.source "QuantumInterpolator.java"

# interfaces
.implements Landroid/animation/TimeInterpolator;
.implements Landroid/view/animation/Interpolator;


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mInterpolator:Landroid/animation/TimeInterpolator;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 20
    const-class v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 50
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V

    .line 51
    return-void
.end method

.method public constructor <init>(I)V
    .locals 8

    .prologue
    const/4 v7, 0x1

    const/4 v6, 0x0

    const/high16 v5, 0x3f800000    # 1.0f

    const/4 v4, 0x0

    .line 62
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 66
    :try_start_0
    const-string v0, "android.view.animation.PathInterpolator"

    invoke-static {v0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 67
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Class;

    const/4 v2, 0x0

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x1

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x2

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    const/4 v2, 0x3

    sget-object v3, Ljava/lang/Float;->TYPE:Ljava/lang/Class;

    aput-object v3, v1, v2

    .line 68
    invoke-virtual {v0, v1}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 69
    packed-switch p1, :pswitch_data_0

    .line 93
    :goto_0
    iget-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    if-nez v0, :cond_0

    .line 94
    packed-switch p1, :pswitch_data_1

    .line 124
    :cond_0
    :goto_1
    return-void

    .line 71
    :pswitch_0
    const/4 v1, 0x4

    :try_start_1
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const/4 v3, 0x0

    .line 72
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;
    :try_end_1
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 87
    :catch_0
    move-exception v0

    .line 88
    sget-object v0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->TAG:Ljava/lang/String;

    const-string v1, "Device does not support PathInterpolator. Falling back to "

    new-array v2, v7, [Ljava/lang/Object;

    const-string v3, "AccelerateDecelerateInterpolator."

    aput-object v3, v2, v6

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->v(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 75
    :pswitch_1
    const/4 v1, 0x4

    :try_start_2
    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    .line 76
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto :goto_0

    .line 79
    :pswitch_2
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    .line 80
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x3e4ccccd    # 0.2f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_0

    .line 83
    :pswitch_3
    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const v3, 0x3ecccccd    # 0.4f

    .line 84
    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    const v3, 0x3f19999a    # 0.6f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    const/high16 v3, 0x3f800000    # 1.0f

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-virtual {v0, v1}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/animation/TimeInterpolator;

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;
    :try_end_2
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 96
    :pswitch_4
    new-instance v0, Landroid/view/animation/AccelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/AccelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    .line 99
    :pswitch_5
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    invoke-direct {v0}, Landroid/view/animation/DecelerateInterpolator;-><init>()V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    .line 102
    :pswitch_6
    new-instance v0, Lcom/android/calendar/timely/animations/QuantumInterpolator$1;

    invoke-direct {v0, p0}, Lcom/android/calendar/timely/animations/QuantumInterpolator$1;-><init>(Lcom/android/calendar/timely/animations/QuantumInterpolator;)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    .line 120
    :pswitch_7
    const v0, 0x3ecccccd    # 0.4f

    const v1, 0x3f19999a    # 0.6f

    invoke-static {v0, v4, v1, v5}, Landroid/support/v4/view/animation/PathInterpolatorCompat;->create(FFFF)Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    goto/16 :goto_1

    .line 69
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch

    .line 94
    :pswitch_data_1
    .packed-switch 0x0
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 128
    iget-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator;->mInterpolator:Landroid/animation/TimeInterpolator;

    invoke-interface {v0, p1}, Landroid/animation/TimeInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

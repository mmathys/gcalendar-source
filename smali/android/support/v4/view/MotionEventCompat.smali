.class public final Landroid/support/v4/view/MotionEventCompat;
.super Ljava/lang/Object;
.source "MotionEventCompat.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;,
        Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;
    }
.end annotation


# static fields
.field static final IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 88
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xe

    if-lt v0, v1, :cond_0

    .line 89
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroid/support/v4/view/MotionEventCompat$ICSMotionEventVersionImpl;-><init>(Landroid/support/v4/view/MotionEventCompat$1;)V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    .line 95
    :goto_0
    return-void

    .line 90
    :cond_0
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_1

    .line 91
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$HoneycombMr1MotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0

    .line 93
    :cond_1
    new-instance v0, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;

    invoke-direct {v0}, Landroid/support/v4/view/MotionEventCompat$BaseMotionEventVersionImpl;-><init>()V

    sput-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    goto :goto_0
.end method

.method public static getActionIndex(Landroid/view/MotionEvent;)I
    .locals 2

    .prologue
    .line 382
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    const v1, 0xff00

    and-int/2addr v0, v1

    shr-int/lit8 v0, v0, 0x8

    return v0
.end method

.method public static getActionMasked(Landroid/view/MotionEvent;)I
    .locals 1

    .prologue
    .line 374
    invoke-virtual {p0}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    and-int/lit16 v0, v0, 0xff

    return v0
.end method

.method public static getAxisValue(Landroid/view/MotionEvent;I)F
    .locals 1

    .prologue
    .line 472
    sget-object v0, Landroid/support/v4/view/MotionEventCompat;->IMPL:Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;

    invoke-interface {v0, p0, p1}, Landroid/support/v4/view/MotionEventCompat$MotionEventVersionImpl;->getAxisValue(Landroid/view/MotionEvent;I)F

    move-result v0

    return v0
.end method

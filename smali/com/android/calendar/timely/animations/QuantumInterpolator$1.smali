.class Lcom/android/calendar/timely/animations/QuantumInterpolator$1;
.super Landroid/view/animation/AccelerateDecelerateInterpolator;
.source "QuantumInterpolator.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/animations/QuantumInterpolator;-><init>(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field private decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

.field final synthetic this$0:Lcom/android/calendar/timely/animations/QuantumInterpolator;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/animations/QuantumInterpolator;)V
    .locals 2

    .prologue
    .line 102
    iput-object p1, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator$1;->this$0:Lcom/android/calendar/timely/animations/QuantumInterpolator;

    invoke-direct {p0}, Landroid/view/animation/AccelerateDecelerateInterpolator;-><init>()V

    .line 109
    new-instance v0, Landroid/view/animation/DecelerateInterpolator;

    const v1, 0x3f4ccccd    # 0.8f

    invoke-direct {v0, v1}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    iput-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator$1;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    return-void
.end method


# virtual methods
.method public getInterpolation(F)F
    .locals 1

    .prologue
    .line 114
    iget-object v0, p0, Lcom/android/calendar/timely/animations/QuantumInterpolator$1;->decelerateInterpolator:Landroid/view/animation/DecelerateInterpolator;

    .line 115
    invoke-virtual {v0, p1}, Landroid/view/animation/DecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    .line 114
    invoke-super {p0, v0}, Landroid/view/animation/AccelerateDecelerateInterpolator;->getInterpolation(F)F

    move-result v0

    return v0
.end method

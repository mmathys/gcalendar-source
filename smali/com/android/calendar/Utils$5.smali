.class final Lcom/android/calendar/Utils$5;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Utils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/Utils;->setFadeAnimations(Z[Landroid/view/View;)Ljava/util/List;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic val$fadeIn:Z

.field final synthetic val$view:Landroid/view/View;


# direct methods
.method constructor <init>(Landroid/view/View;Z)V
    .locals 0

    .prologue
    .line 3769
    iput-object p1, p0, Lcom/android/calendar/Utils$5;->val$view:Landroid/view/View;

    iput-boolean p2, p0, Lcom/android/calendar/Utils$5;->val$fadeIn:Z

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 3777
    iget-object v0, p0, Lcom/android/calendar/Utils$5;->val$view:Landroid/view/View;

    iget-boolean v1, p0, Lcom/android/calendar/Utils$5;->val$fadeIn:Z

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 3778
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 3772
    iget-object v0, p0, Lcom/android/calendar/Utils$5;->val$view:Landroid/view/View;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lcom/android/calendar/Utils;->setVisibility(Landroid/view/View;Z)I

    .line 3773
    return-void
.end method

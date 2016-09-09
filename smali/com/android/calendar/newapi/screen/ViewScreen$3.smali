.class Lcom/android/calendar/newapi/screen/ViewScreen$3;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreen;->showContentAnimated(Ljava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

.field final synthetic val$onAnimationEnd:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreen;Ljava/lang/Runnable;)V
    .locals 0

    .prologue
    .line 311
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$3;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    iput-object p2, p0, Lcom/android/calendar/newapi/screen/ViewScreen$3;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1

    .prologue
    .line 314
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$3;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-virtual {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->adjustScrollViewBounds()V

    .line 315
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$3;->val$onAnimationEnd:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 316
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$3;->val$onAnimationEnd:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 318
    :cond_0
    return-void
.end method

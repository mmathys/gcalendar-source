.class Lcom/android/calendar/newapi/screen/ViewScreen$4;
.super Landroid/animation/AnimatorListenerAdapter;
.source "ViewScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreen;->hideContentAnimated()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V
    .locals 0

    .prologue
    .line 329
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 332
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$4;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    sget v1, Lcom/android/calendar/R$id;->event_info:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/screen/ViewScreen;->findViewById(I)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 333
    return-void
.end method

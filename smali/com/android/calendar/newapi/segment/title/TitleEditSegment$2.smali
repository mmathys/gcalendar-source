.class Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "TitleEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->animateColor(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

.field final synthetic val$color:I


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;I)V
    .locals 0

    .prologue
    .line 119
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    iput p2, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->val$color:I

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 129
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    iget v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->val$color:I

    invoke-virtual {v0, v1}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->setBackgroundColor(I)V

    .line 130
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->access$200(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 131
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationEnd(Landroid/animation/Animator;)V

    .line 132
    return-void
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 2

    .prologue
    .line 122
    invoke-super {p0, p1}, Landroid/animation/AnimatorListenerAdapter;->onAnimationStart(Landroid/animation/Animator;)V

    .line 123
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->access$200(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Landroid/view/View;

    move-result-object v0

    iget v1, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->val$color:I

    invoke-virtual {v0, v1}, Landroid/view/View;->setBackgroundColor(I)V

    .line 124
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/title/TitleEditSegment$2;->this$0:Lcom/android/calendar/newapi/segment/title/TitleEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->mRippleView:Landroid/view/View;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/title/TitleEditSegment;->access$200(Lcom/android/calendar/newapi/segment/title/TitleEditSegment;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setVisibility(I)V

    .line 125
    return-void
.end method

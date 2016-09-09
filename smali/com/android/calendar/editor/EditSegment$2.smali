.class Lcom/android/calendar/editor/EditSegment$2;
.super Ljava/lang/Object;
.source "EditSegment.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/editor/EditSegment;->getHideKeyboardHelper()Landroid/view/View$OnTouchListener;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/editor/EditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/editor/EditSegment;)V
    .locals 0

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/calendar/editor/EditSegment$2;->this$0:Lcom/android/calendar/editor/EditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 2

    .prologue
    .line 468
    invoke-virtual {p2}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    const/4 v1, 0x1

    if-ne v0, v1, :cond_0

    .line 469
    iget-object v0, p0, Lcom/android/calendar/editor/EditSegment$2;->this$0:Lcom/android/calendar/editor/EditSegment;

    iget-object v0, v0, Lcom/android/calendar/editor/EditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 471
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

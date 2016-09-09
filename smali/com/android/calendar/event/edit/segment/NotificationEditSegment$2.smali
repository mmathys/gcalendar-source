.class Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;
.super Ljava/lang/Object;
.source "NotificationEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)V
    .locals 0

    .prologue
    .line 118
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2

    .prologue
    .line 122
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->mSegmentController:Lcom/android/calendar/editor/EditSegmentController;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)Lcom/android/calendar/editor/EditSegmentController;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/editor/EditSegmentController;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/android/calendar/Utils;->hideFocusAndSoftKeyboard(Landroid/app/Activity;Landroid/view/View;)V

    .line 123
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$2;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    const/4 v1, -0x1

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->addNotification(I)Landroid/widget/Spinner;
    invoke-static {v0, v1}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;I)Landroid/widget/Spinner;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Spinner;->performClick()Z

    .line 124
    return-void
.end method

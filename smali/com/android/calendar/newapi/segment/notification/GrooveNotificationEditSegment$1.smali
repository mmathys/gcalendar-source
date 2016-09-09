.class Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$1;
.super Ljava/lang/Object;
.source "GrooveNotificationEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->onFinishInflate()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 58
    iget-object v0, p0, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment$1;->this$0:Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;

    # getter for: Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->mSwitch:Lcom/android/calendar/newapi/segment/common/NinjaSwitch;
    invoke-static {v0}, Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;->access$000(Lcom/android/calendar/newapi/segment/notification/GrooveNotificationEditSegment;)Lcom/android/calendar/newapi/segment/common/NinjaSwitch;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/calendar/newapi/segment/common/NinjaSwitch;->toggle()V

    .line 59
    return-void
.end method

.class Lcom/android/calendar/event/edit/segment/NotificationEditSegment$1;
.super Ljava/lang/Object;
.source "NotificationEditSegment.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/NotificationEditSegment;
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
    .line 89
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 92
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/NotificationEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/NotificationEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->updateNotificationSet()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/NotificationEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/NotificationEditSegment;)V

    .line 93
    return-void
.end method

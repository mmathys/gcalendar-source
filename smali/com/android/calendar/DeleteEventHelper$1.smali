.class Lcom/android/calendar/DeleteEventHelper$1;
.super Landroid/content/AsyncQueryHandler;
.source "DeleteEventHelper.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/DeleteEventHelper;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/DeleteEventHelper;


# direct methods
.method constructor <init>(Lcom/android/calendar/DeleteEventHelper;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 104
    iput-object p1, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 8

    .prologue
    .line 107
    if-nez p3, :cond_0

    .line 124
    :goto_0
    return-void

    .line 111
    :cond_0
    :try_start_0
    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 112
    new-instance v6, Lcom/android/calendar/event/CalendarEventModel;

    invoke-direct {v6}, Lcom/android/calendar/event/CalendarEventModel;-><init>()V

    .line 113
    invoke-static {v6, p3}, Lcom/android/calendar/event/EditHelper;->setModelFromEventCursor(Lcom/android/calendar/event/CalendarEventModel;Landroid/database/Cursor;)Z

    .line 116
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$000(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/calendar/event/CalendarEventModel;->mEnd:J

    .line 117
    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$100(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v0

    iput-wide v0, v6, Lcom/android/calendar/event/CalendarEventModel;->mStart:J

    iput-wide v0, v6, Lcom/android/calendar/event/CalendarEventModel;->mOriginalStart:J

    .line 118
    iget-object v1, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mStartMillis:J
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$100(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v2

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    # getter for: Lcom/android/calendar/DeleteEventHelper;->mEndMillis:J
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$000(Lcom/android/calendar/DeleteEventHelper;)J

    move-result-wide v4

    iget-object v0, p0, Lcom/android/calendar/DeleteEventHelper$1;->this$0:Lcom/android/calendar/DeleteEventHelper;

    .line 119
    # getter for: Lcom/android/calendar/DeleteEventHelper;->mWhichDelete:I
    invoke-static {v0}, Lcom/android/calendar/DeleteEventHelper;->access$200(Lcom/android/calendar/DeleteEventHelper;)I

    move-result v7

    .line 118
    # invokes: Lcom/android/calendar/DeleteEventHelper;->delete(JJLcom/android/calendar/event/CalendarEventModel;I)V
    invoke-static/range {v1 .. v7}, Lcom/android/calendar/DeleteEventHelper;->access$300(Lcom/android/calendar/DeleteEventHelper;JJLcom/android/calendar/event/CalendarEventModel;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 122
    :cond_1
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    goto :goto_0

    :catchall_0
    move-exception v0

    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    throw v0
.end method

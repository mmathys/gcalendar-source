.class Lcom/android/calendar/AllInOneCalendarActivity$18;
.super Landroid/content/AsyncQueryHandler;
.source "AllInOneCalendarActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/AllInOneCalendarActivity;->goToTimeWithEventId(J)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/AllInOneCalendarActivity;


# direct methods
.method constructor <init>(Lcom/android/calendar/AllInOneCalendarActivity;Landroid/content/ContentResolver;)V
    .locals 0

    .prologue
    .line 2587
    iput-object p1, p0, Lcom/android/calendar/AllInOneCalendarActivity$18;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-direct {p0, p2}, Landroid/content/AsyncQueryHandler;-><init>(Landroid/content/ContentResolver;)V

    return-void
.end method


# virtual methods
.method protected onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V
    .locals 4

    .prologue
    .line 2590
    invoke-super {p0, p1, p2, p3}, Landroid/content/AsyncQueryHandler;->onQueryComplete(ILjava/lang/Object;Landroid/database/Cursor;)V

    .line 2591
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2592
    const-string v0, "dtstart"

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v0

    invoke-interface {p3, v0}, Landroid/database/Cursor;->getLong(I)J

    move-result-wide v0

    .line 2593
    invoke-interface {p3}, Landroid/database/Cursor;->close()V

    .line 2595
    new-instance v2, Lcom/android/calendar/time/Time;

    iget-object v3, p0, Lcom/android/calendar/AllInOneCalendarActivity$18;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mTimeZone:Ljava/lang/String;
    invoke-static {v3}, Lcom/android/calendar/AllInOneCalendarActivity;->access$300(Lcom/android/calendar/AllInOneCalendarActivity;)Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Lcom/android/calendar/time/Time;-><init>(Ljava/lang/String;)V

    .line 2596
    invoke-virtual {v2, v0, v1}, Lcom/android/calendar/time/Time;->set(J)V

    .line 2597
    invoke-virtual {v2}, Lcom/android/calendar/time/Time;->normalizeSafe()V

    .line 2598
    iget-object v0, p0, Lcom/android/calendar/AllInOneCalendarActivity$18;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    # getter for: Lcom/android/calendar/AllInOneCalendarActivity;->mController:Lcom/android/calendar/CalendarController;
    invoke-static {v0}, Lcom/android/calendar/AllInOneCalendarActivity;->access$600(Lcom/android/calendar/AllInOneCalendarActivity;)Lcom/android/calendar/CalendarController;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/AllInOneCalendarActivity$18;->this$0:Lcom/android/calendar/AllInOneCalendarActivity;

    invoke-virtual {v0, v1, v2}, Lcom/android/calendar/CalendarController;->goToTime(Ljava/lang/Object;Lcom/android/calendar/time/Time;)V

    .line 2600
    :cond_0
    return-void
.end method

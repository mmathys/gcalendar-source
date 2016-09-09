.class Lcom/android/calendar/event/edit/segment/CalendarEditSegment$1;
.super Ljava/lang/Object;
.source "CalendarEditSegment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/CalendarEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/CalendarEditSegment;)V
    .locals 0

    .prologue
    .line 71
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 74
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/CalendarEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/CalendarEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->mEditInput:Ljava/lang/Object;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/CalendarEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/CalendarEditSegment;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/EventEditManager;

    invoke-virtual {v0, p1}, Lcom/android/calendar/event/data/EventEditManager;->changeCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 75
    return-void
.end method

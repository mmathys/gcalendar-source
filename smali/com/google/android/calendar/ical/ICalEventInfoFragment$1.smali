.class Lcom/google/android/calendar/ical/ICalEventInfoFragment$1;
.super Ljava/lang/Object;
.source "ICalEventInfoFragment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalEventInfoFragment;->performImportOrUpdate(Ljava/util/Map;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventInfoFragment;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$1;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 162
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventInfoFragment$1;->this$0:Lcom/google/android/calendar/ical/ICalEventInfoFragment;

    # invokes: Lcom/google/android/calendar/ical/ICalEventInfoFragment;->importEvent(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    invoke-static {v0, p1}, Lcom/google/android/calendar/ical/ICalEventInfoFragment;->access$000(Lcom/google/android/calendar/ical/ICalEventInfoFragment;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 163
    return-void
.end method

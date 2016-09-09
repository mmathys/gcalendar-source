.class Lcom/google/android/calendar/ical/ICalEventsListFragment$2;
.super Ljava/lang/Object;
.source "ICalEventsListFragment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportAll()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalEventsListFragment;)V
    .locals 0

    .prologue
    .line 124
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/google/android/calendar/ical/ICalEventsListFragment$2;->this$0:Lcom/google/android/calendar/ical/ICalEventsListFragment;

    # invokes: Lcom/google/android/calendar/ical/ICalEventsListFragment;->performImportWithDefaultCalendar(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    invoke-static {v0, p1}, Lcom/google/android/calendar/ical/ICalEventsListFragment;->access$100(Lcom/google/android/calendar/ical/ICalEventsListFragment;Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    .line 128
    return-void
.end method

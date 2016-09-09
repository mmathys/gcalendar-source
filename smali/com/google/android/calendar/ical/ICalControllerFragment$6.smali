.class Lcom/google/android/calendar/ical/ICalControllerFragment$6;
.super Ljava/lang/Object;
.source "ICalControllerFragment.java"

# interfaces
.implements Lcom/android/calendar/event/edit/segment/CalendarEditSegment$CalendarPickerDialog$OnCalendarSelectedListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/ical/ICalControllerFragment;->showCalendarPicker(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

.field final synthetic val$originalModels:Ljava/util/Map;

.field final synthetic val$view:Lcom/android/calendar/timely/TimelyChip;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/ical/ICalControllerFragment;Ljava/util/Map;Lcom/android/calendar/timely/TimelyChip;)V
    .locals 0

    .prologue
    .line 814
    iput-object p1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iput-object p2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->val$originalModels:Ljava/util/Map;

    iput-object p3, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->val$view:Lcom/android/calendar/timely/TimelyChip;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCalendarSelected(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 4

    .prologue
    .line 817
    invoke-interface {p1}, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;->getKey()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/data/AndroidCalendarKey;

    .line 818
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->val$originalModels:Ljava/util/Map;

    invoke-interface {v0}, Lcom/android/calendar/event/data/AndroidCalendarKey;->getCalendarId()J

    move-result-wide v2

    invoke-static {v2, v3}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v0

    invoke-interface {v1, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/event/CalendarEventModel;

    .line 819
    iget-object v1, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->this$0:Lcom/google/android/calendar/ical/ICalControllerFragment;

    iget-object v2, p0, Lcom/google/android/calendar/ical/ICalControllerFragment$6;->val$view:Lcom/android/calendar/timely/TimelyChip;

    # invokes: Lcom/google/android/calendar/ical/ICalControllerFragment;->launchEventInfoFromModel(Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V
    invoke-static {v1, v2, v0}, Lcom/google/android/calendar/ical/ICalControllerFragment;->access$000(Lcom/google/android/calendar/ical/ICalControllerFragment;Lcom/android/calendar/timely/TimelyChip;Lcom/android/calendar/event/CalendarEventModel;)V

    .line 820
    return-void
.end method

.class final Lcom/google/android/calendar/task/RecurrenceConverter$1;
.super Ljava/lang/Object;
.source "RecurrenceConverter.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/task/RecurrenceConverter;->addWeekdaysOnEventRecurrence(Lcom/android/calendarcommon2/EventRecurrence;Lcom/google/android/gms/reminders/model/Recurrence;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Ljava/lang/Integer;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 167
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Ljava/lang/Integer;Ljava/lang/Integer;)I
    .locals 2

    .prologue
    .line 170
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    # invokes: Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceWeekday(I)I
    invoke-static {v0}, Lcom/google/android/calendar/task/RecurrenceConverter;->access$000(I)I

    move-result v0

    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    # invokes: Lcom/google/android/calendar/task/RecurrenceConverter;->toEventRecurrenceWeekday(I)I
    invoke-static {v1}, Lcom/google/android/calendar/task/RecurrenceConverter;->access$000(I)I

    move-result v1

    sub-int/2addr v0, v1

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 167
    check-cast p1, Ljava/lang/Integer;

    check-cast p2, Ljava/lang/Integer;

    invoke-virtual {p0, p1, p2}, Lcom/google/android/calendar/task/RecurrenceConverter$1;->compare(Ljava/lang/Integer;Ljava/lang/Integer;)I

    move-result v0

    return v0
.end method

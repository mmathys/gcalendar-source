.class public Lcom/android/calendar/event/AttendeeCollection$RoomSorter;
.super Ljava/lang/Object;
.source "AttendeeCollection.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/AttendeeCollection;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4
    name = "RoomSorter"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/calendar/event/CalendarEventModel$Attendee;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/AttendeeCollection;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/event/AttendeeCollection;)V
    .locals 0

    .prologue
    .line 216
    iput-object p1, p0, Lcom/android/calendar/event/AttendeeCollection$RoomSorter;->this$0:Lcom/android/calendar/event/AttendeeCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/event/CalendarEventModel$Attendee;Lcom/android/calendar/event/CalendarEventModel$Attendee;)I
    .locals 3

    .prologue
    .line 220
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection$RoomSorter;->this$0:Lcom/android/calendar/event/AttendeeCollection;

    # getter for: Lcom/android/calendar/event/AttendeeCollection;->mCollator:Ljava/text/Collator;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeeCollection;->access$000(Lcom/android/calendar/event/AttendeeCollection;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 216
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    check-cast p2, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/AttendeeCollection$RoomSorter;->compare(Lcom/android/calendar/event/CalendarEventModel$Attendee;Lcom/android/calendar/event/CalendarEventModel$Attendee;)I

    move-result v0

    return v0
.end method

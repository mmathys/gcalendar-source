.class public Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;
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
    name = "PeopleSorter"
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
.field private final USE_LEFT:I

.field private final USE_RIGHT:I

.field final synthetic this$0:Lcom/android/calendar/event/AttendeeCollection;


# direct methods
.method protected constructor <init>(Lcom/android/calendar/event/AttendeeCollection;)V
    .locals 1

    .prologue
    .line 195
    iput-object p1, p0, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;->this$0:Lcom/android/calendar/event/AttendeeCollection;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 196
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;->USE_LEFT:I

    .line 197
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;->USE_RIGHT:I

    return-void
.end method


# virtual methods
.method public compare(Lcom/android/calendar/event/CalendarEventModel$Attendee;Lcom/android/calendar/event/CalendarEventModel$Attendee;)I
    .locals 3

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->isOrganizer()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 202
    const/4 v0, -0x1

    .line 206
    :goto_0
    return v0

    .line 203
    :cond_0
    invoke-virtual {p2}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->isOrganizer()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 204
    const/4 v0, 0x1

    goto :goto_0

    .line 206
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;->this$0:Lcom/android/calendar/event/AttendeeCollection;

    # getter for: Lcom/android/calendar/event/AttendeeCollection;->mCollator:Ljava/text/Collator;
    invoke-static {v0}, Lcom/android/calendar/event/AttendeeCollection;->access$000(Lcom/android/calendar/event/AttendeeCollection;)Ljava/text/Collator;

    move-result-object v0

    invoke-virtual {p1}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2}, Lcom/android/calendar/event/CalendarEventModel$Attendee;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v1, v2}, Ljava/text/Collator;->compare(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    goto :goto_0
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1

    .prologue
    .line 195
    check-cast p1, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    check-cast p2, Lcom/android/calendar/event/CalendarEventModel$Attendee;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/AttendeeCollection$PeopleSorter;->compare(Lcom/android/calendar/event/CalendarEventModel$Attendee;Lcom/android/calendar/event/CalendarEventModel$Attendee;)I

    move-result v0

    return v0
.end method

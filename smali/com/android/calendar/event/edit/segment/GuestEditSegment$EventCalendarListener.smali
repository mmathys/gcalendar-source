.class Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;
.super Ljava/lang/Object;
.source "GuestEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/calendar/event/edit/segment/GuestEditSegment;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "EventCalendarListener"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;


# direct methods
.method private constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V
    .locals 0

    .prologue
    .line 1105
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;Lcom/android/calendar/event/edit/segment/GuestEditSegment$1;)V
    .locals 0

    .prologue
    .line 1105
    invoke-direct {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;-><init>(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    return-void
.end method


# virtual methods
.method public onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V
    .locals 1

    .prologue
    .line 1110
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    invoke-virtual {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->showOrHide()V

    .line 1111
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->refreshInputFromModel()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$2400(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1112
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;->this$0:Lcom/android/calendar/event/edit/segment/GuestEditSegment;

    # invokes: Lcom/android/calendar/event/edit/segment/GuestEditSegment;->updateFindATimeButton()V
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/GuestEditSegment;->access$1500(Lcom/android/calendar/event/edit/segment/GuestEditSegment;)V

    .line 1113
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 1105
    check-cast p1, Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/GuestEditSegment$EventCalendarListener;->onChange(Lcom/google/calendar/v2/client/service/api/calendars/ImmutableCalendar;)V

    return-void
.end method

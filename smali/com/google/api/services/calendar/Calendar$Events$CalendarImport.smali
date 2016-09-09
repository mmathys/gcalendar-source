.class public Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CalendarImport"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Event;",
        ">;"
    }
.end annotation


# instance fields
.field private calendarId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsAllDayReminders:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private supportsAttachments:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Events;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V
    .locals 6

    .prologue
    .line 3912
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->this$1:Lcom/google/api/services/calendar/Calendar$Events;

    .line 3913
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "POST"

    const-string v3, "calendars/{calendarId}/events/import"

    const-class v5, Lcom/google/api/services/calendar/model/Event;

    move-object v0, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 3914
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->calendarId:Ljava/lang/String;

    .line 3915
    const-string v0, "content"

    invoke-virtual {p0, p3, v0}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3916
    invoke-virtual {p3}, Lcom/google/api/services/calendar/model/Event;->getICalUID()Ljava/lang/String;

    move-result-object v0

    const-string v1, "Event.getICalUID()"

    invoke-virtual {p0, v0, v1}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->checkRequiredParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 3917
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    .locals 1

    .prologue
    .line 4115
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    .locals 1

    .prologue
    .line 3926
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 3891
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;

    move-result-object v0

    return-object v0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    .locals 0

    .prologue
    .line 4065
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 4066
    return-object p0
.end method

.method public setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;
    .locals 0

    .prologue
    .line 4087
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$CalendarImport;->supportsAttachments:Ljava/lang/Boolean;

    .line 4088
    return-object p0
.end method

.class public Lcom/google/api/services/calendar/Calendar$Events$Update;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Update"
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

.field private eventId:Ljava/lang/String;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field private sendNotifications:Ljava/lang/Boolean;
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

.field private supportsConferenceData:Ljava/lang/Boolean;
    .annotation runtime Lcom/google/api/client/util/Key;
    .end annotation
.end field

.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Events;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Events;Ljava/lang/String;Ljava/lang/String;Lcom/google/api/services/calendar/model/Event;)V
    .locals 6

    .prologue
    .line 6362
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->this$1:Lcom/google/api/services/calendar/Calendar$Events;

    .line 6363
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "PUT"

    const-string v3, "calendars/{calendarId}/events/{eventId}"

    const-class v5, Lcom/google/api/services/calendar/model/Event;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 6364
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->calendarId:Ljava/lang/String;

    .line 6365
    const-string v0, "Required parameter eventId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->eventId:Ljava/lang/String;

    .line 6366
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 6341
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 6341
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 6341
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 1

    .prologue
    .line 6659
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$Update;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 6341
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Update;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 1

    .prologue
    .line 6375
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$Update;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 6341
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Events$Update;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Update;

    move-result-object v0

    return-object v0
.end method

.method public setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 0

    .prologue
    .line 6560
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->sendNotifications:Ljava/lang/Boolean;

    .line 6561
    return-object p0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 0

    .prologue
    .line 6609
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 6610
    return-object p0
.end method

.method public setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 0

    .prologue
    .line 6631
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->supportsAttachments:Ljava/lang/Boolean;

    .line 6632
    return-object p0
.end method

.method public setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Update;
    .locals 0

    .prologue
    .line 6653
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Update;->supportsConferenceData:Ljava/lang/Boolean;

    .line 6654
    return-object p0
.end method

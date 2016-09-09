.class public Lcom/google/api/services/calendar/Calendar$Events$Patch;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Events;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Patch"
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
    .line 5831
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->this$1:Lcom/google/api/services/calendar/Calendar$Events;

    .line 5832
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Events;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "PATCH"

    const-string v3, "calendars/{calendarId}/events/{eventId}"

    const-class v5, Lcom/google/api/services/calendar/model/Event;

    move-object v0, p0

    move-object v4, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 5833
    const-string v0, "Required parameter calendarId must be specified."

    invoke-static {p2, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->calendarId:Ljava/lang/String;

    .line 5834
    const-string v0, "Required parameter eventId must be specified."

    invoke-static {p3, v0}, Lcom/google/api/client/util/Preconditions;->checkNotNull(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    iput-object v0, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->eventId:Ljava/lang/String;

    .line 5835
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 5810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 5810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 5810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 1

    .prologue
    .line 6128
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$Patch;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 5810
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 1

    .prologue
    .line 5844
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Events$Patch;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 5810
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Events$Patch;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Events$Patch;

    move-result-object v0

    return-object v0
.end method

.method public setSendNotifications(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 0

    .prologue
    .line 6029
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->sendNotifications:Ljava/lang/Boolean;

    .line 6030
    return-object p0
.end method

.method public setSupportsAllDayReminders(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 0

    .prologue
    .line 6078
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->supportsAllDayReminders:Ljava/lang/Boolean;

    .line 6079
    return-object p0
.end method

.method public setSupportsAttachments(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 0

    .prologue
    .line 6100
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->supportsAttachments:Ljava/lang/Boolean;

    .line 6101
    return-object p0
.end method

.method public setSupportsConferenceData(Ljava/lang/Boolean;)Lcom/google/api/services/calendar/Calendar$Events$Patch;
    .locals 0

    .prologue
    .line 6122
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Events$Patch;->supportsConferenceData:Ljava/lang/Boolean;

    .line 6123
    return-object p0
.end method

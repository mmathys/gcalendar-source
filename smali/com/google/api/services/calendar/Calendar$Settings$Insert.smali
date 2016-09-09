.class public Lcom/google/api/services/calendar/Calendar$Settings$Insert;
.super Lcom/google/api/services/calendar/CalendarRequest;
.source "Calendar.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/api/services/calendar/Calendar$Settings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "Insert"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/google/api/services/calendar/CalendarRequest",
        "<",
        "Lcom/google/api/services/calendar/model/Setting;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$1:Lcom/google/api/services/calendar/Calendar$Settings;


# direct methods
.method protected constructor <init>(Lcom/google/api/services/calendar/Calendar$Settings;Lcom/google/api/services/calendar/model/Setting;)V
    .locals 6

    .prologue
    .line 8822
    iput-object p1, p0, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->this$1:Lcom/google/api/services/calendar/Calendar$Settings;

    .line 8823
    iget-object v1, p1, Lcom/google/api/services/calendar/Calendar$Settings;->this$0:Lcom/google/api/services/calendar/Calendar;

    const-string v2, "POST"

    const-string v3, "users/me/settings"

    const-class v5, Lcom/google/api/services/calendar/model/Setting;

    move-object v0, p0

    move-object v4, p2

    invoke-direct/range {v0 .. v5}, Lcom/google/api/services/calendar/CalendarRequest;-><init>(Lcom/google/api/services/calendar/Calendar;Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;Ljava/lang/Class;)V

    .line 8824
    return-void
.end method


# virtual methods
.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/AbstractGoogleClientRequest;
    .locals 1

    .prologue
    .line 8804
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/googleapis/services/json/AbstractGoogleJsonClientRequest;
    .locals 1

    .prologue
    .line 8804
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/client/util/GenericData;
    .locals 1

    .prologue
    .line 8804
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v0

    return-object v0
.end method

.method public set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;
    .locals 1

    .prologue
    .line 8879
    invoke-super {p0, p1, p2}, Lcom/google/api/services/calendar/CalendarRequest;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    return-object v0
.end method

.method public bridge synthetic set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 8804
    invoke-virtual {p0, p1, p2}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->set(Ljava/lang/String;Ljava/lang/Object;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v0

    return-object v0
.end method

.method public setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;
    .locals 1

    .prologue
    .line 8833
    invoke-super {p0, p1}, Lcom/google/api/services/calendar/CalendarRequest;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;

    move-result-object v0

    check-cast v0, Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    return-object v0
.end method

.method public bridge synthetic setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/CalendarRequest;
    .locals 1

    .prologue
    .line 8804
    invoke-virtual {p0, p1}, Lcom/google/api/services/calendar/Calendar$Settings$Insert;->setFields(Ljava/lang/String;)Lcom/google/api/services/calendar/Calendar$Settings$Insert;

    move-result-object v0

    return-object v0
.end method

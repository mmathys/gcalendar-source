.class public abstract Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
.super Ljava/lang/Object;
.source "SmartMailInfoScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/ConfirmationSegment$ConfirmationProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x404
    name = "CommonConfirmationProvider"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;


# direct methods
.method protected constructor <init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V
    .locals 0

    .prologue
    .line 55
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;->this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAccountName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 60
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;->this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;->this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    iget-object v0, v0, Lcom/android/calendar/event/CalendarEventModel;->mOwnerAccount:Ljava/lang/String;

    goto :goto_0
.end method

.method public getUri()Ljava/lang/String;
    .locals 1

    .prologue
    .line 65
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;->this$0:Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;->getEventSource()Lcom/google/calendar/v2/client/service/api/events/EventSource;

    move-result-object v0

    .line 66
    if-nez v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/events/EventSource;->getUrl()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

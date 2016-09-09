.class Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;
.super Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;
.source "TicketedEventScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/TicketedEventScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)V
    .locals 0

    .prologue
    .line 112
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/SmartMailAddressSegment$SmartMailAddressProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;
    .locals 1

    .prologue
    .line 115
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->getEvent2()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 116
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->getEvent2()Lcom/google/api/services/calendar/model/Event2;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/api/services/calendar/model/Event2;->getAddress()Lcom/google/api/services/calendar/model/SmartMailAddress;

    move-result-object v0

    .line 118
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 123
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$3;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

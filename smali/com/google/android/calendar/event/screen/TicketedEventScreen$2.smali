.class Lcom/google/android/calendar/event/screen/TicketedEventScreen$2;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
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
    .line 103
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V

    return-void
.end method


# virtual methods
.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 106
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$2;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    # getter for: Lcom/google/android/calendar/event/screen/TicketedEventScreen;->mReservationNumber:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/TicketedEventScreen;->access$000(Lcom/google/android/calendar/event/screen/TicketedEventScreen;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

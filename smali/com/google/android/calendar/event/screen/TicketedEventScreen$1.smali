.class Lcom/google/android/calendar/event/screen/TicketedEventScreen$1;
.super Ljava/lang/Object;
.source "TicketedEventScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/ContactSegment$ContactProvider;


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
    .line 83
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/TicketedEventScreen$1;->this$0:Lcom/google/android/calendar/event/screen/TicketedEventScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getAnalyticsAction()Ljava/lang/String;
    .locals 1

    .prologue
    .line 97
    const/4 v0, 0x0

    return-object v0
.end method

.method public getDisplayText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 86
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLink()Ljava/lang/String;
    .locals 1

    .prologue
    .line 92
    const/4 v0, 0x0

    return-object v0
.end method

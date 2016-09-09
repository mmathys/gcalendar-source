.class Lcom/google/android/calendar/event/screen/InvitationScreen$1;
.super Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;
.source "InvitationScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/InvitationScreen;->onInflateView(Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/InvitationScreen;)V
    .locals 0

    .prologue
    .line 51
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$1;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    invoke-direct {p0}, Lcom/google/android/calendar/event/segment/TimelyLocationSegment$TimelyLocationProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getModelData()Lcom/android/calendar/event/CalendarEventModel;
    .locals 1

    .prologue
    .line 54
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$1;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    iget-object v0, v0, Lcom/google/android/calendar/event/screen/InvitationScreen;->mModel:Lcom/android/calendar/event/CalendarEventModel;

    return-object v0
.end method

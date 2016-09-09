.class Lcom/google/android/calendar/event/screen/InvitationScreen$2;
.super Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;
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
    .line 60
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$2;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    invoke-direct {p0, p1}, Lcom/google/android/calendar/event/screen/SmartMailInfoScreen$CommonConfirmationProvider;-><init>(Lcom/google/android/calendar/event/screen/SmartMailInfoScreen;)V

    return-void
.end method


# virtual methods
.method public getConfirmationNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 63
    const/4 v0, 0x0

    return-object v0
.end method

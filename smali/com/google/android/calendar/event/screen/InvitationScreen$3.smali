.class Lcom/google/android/calendar/event/screen/InvitationScreen$3;
.super Ljava/lang/Object;
.source "InvitationScreen.java"

# interfaces
.implements Lcom/google/android/calendar/event/segment/GenericLinkSegment$GenericLinkProvider;


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
    .line 69
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$3;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getText()Ljava/lang/String;
    .locals 5

    .prologue
    .line 72
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$3;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    # getter for: Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/InvitationScreen;->access$000(Lcom/google/android/calendar/event/screen/InvitationScreen;)Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$3;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    invoke-virtual {v0}, Lcom/google/android/calendar/event/screen/InvitationScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->invite_event_open:I

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$3;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    # getter for: Lcom/google/android/calendar/event/screen/InvitationScreen;->mName:Ljava/lang/String;
    invoke-static {v4}, Lcom/google/android/calendar/event/screen/InvitationScreen;->access$000(Lcom/google/android/calendar/event/screen/InvitationScreen;)Ljava/lang/String;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-virtual {v0, v1, v2}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 75
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getUri()Landroid/net/Uri;
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/InvitationScreen$3;->this$0:Lcom/google/android/calendar/event/screen/InvitationScreen;

    # getter for: Lcom/google/android/calendar/event/screen/InvitationScreen;->mUri:Landroid/net/Uri;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/InvitationScreen;->access$100(Lcom/google/android/calendar/event/screen/InvitationScreen;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

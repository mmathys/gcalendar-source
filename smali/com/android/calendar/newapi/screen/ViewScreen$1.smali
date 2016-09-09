.class Lcom/android/calendar/newapi/screen/ViewScreen$1;
.super Lcom/android/calendar/PreventDoubleClick;
.source "ViewScreen.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/newapi/screen/ViewScreen;->updateEditButton()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/newapi/screen/ViewScreen;


# direct methods
.method constructor <init>(Lcom/android/calendar/newapi/screen/ViewScreen;)V
    .locals 0

    .prologue
    .line 183
    iput-object p1, p0, Lcom/android/calendar/newapi/screen/ViewScreen$1;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    invoke-direct {p0}, Lcom/android/calendar/PreventDoubleClick;-><init>()V

    return-void
.end method


# virtual methods
.method public onFirstClick(Landroid/view/View;)V
    .locals 1

    .prologue
    .line 186
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$1;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$000(Lcom/android/calendar/newapi/screen/ViewScreen;)Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 187
    iget-object v0, p0, Lcom/android/calendar/newapi/screen/ViewScreen$1;->this$0:Lcom/android/calendar/newapi/screen/ViewScreen;

    # getter for: Lcom/android/calendar/newapi/screen/ViewScreen;->mCallback:Lcom/android/calendar/newapi/screen/ViewScreen$Callback;
    invoke-static {v0}, Lcom/android/calendar/newapi/screen/ViewScreen;->access$000(Lcom/android/calendar/newapi/screen/ViewScreen;)Lcom/android/calendar/newapi/screen/ViewScreen$Callback;

    move-result-object v0

    invoke-interface {v0}, Lcom/android/calendar/newapi/screen/ViewScreen$Callback;->onEditClicked()V

    .line 189
    :cond_0
    return-void
.end method

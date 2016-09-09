.class Lcom/google/android/calendar/event/screen/BirthdayScreen$2;
.super Ljava/lang/Object;
.source "BirthdayScreen.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/google/android/calendar/event/screen/BirthdayScreen;->updateHeadline()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

.field final synthetic val$dateString:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/google/android/calendar/event/screen/BirthdayScreen;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 159
    iput-object p1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    iput-object p2, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->val$dateString:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onGlobalLayout()V
    .locals 6

    .prologue
    const/4 v3, 0x1

    .line 166
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    # getter for: Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->access$100(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    invoke-static {v0, p0}, Lcom/android/calendar/Utils;->removeOnGlobalLayoutListener(Landroid/view/View;Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 168
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    # getter for: Lcom/google/android/calendar/event/screen/BirthdayScreen;->mEventHeader:Landroid/view/ViewGroup;
    invoke-static {v0}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->access$200(Lcom/google/android/calendar/event/screen/BirthdayScreen;)Landroid/view/ViewGroup;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 169
    if-eqz v0, :cond_0

    .line 170
    invoke-virtual {v0}, Landroid/widget/TextView;->getLineCount()I

    move-result v0

    .line 171
    if-le v0, v3, :cond_0

    .line 172
    iget-object v0, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    iget-object v1, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->this$0:Lcom/google/android/calendar/event/screen/BirthdayScreen;

    invoke-virtual {v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/android/calendar/R$string;->birthdays_on_two:I

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    iget-object v5, p0, Lcom/google/android/calendar/event/screen/BirthdayScreen$2;->val$dateString:Ljava/lang/String;

    aput-object v5, v3, v4

    .line 173
    invoke-virtual {v1, v2, v3}, Landroid/content/res/Resources;->getString(I[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 172
    # invokes: Lcom/google/android/calendar/event/screen/BirthdayScreen;->setHeadlineTitle(Ljava/lang/String;)V
    invoke-static {v0, v1}, Lcom/google/android/calendar/event/screen/BirthdayScreen;->access$300(Lcom/google/android/calendar/event/screen/BirthdayScreen;Ljava/lang/String;)V

    .line 176
    :cond_0
    return-void
.end method

.class Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;
.super Landroid/animation/AnimatorListenerAdapter;
.source "FindTime2UiSuggestionFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;


# direct methods
.method constructor <init>(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)V
    .locals 0

    .prologue
    .line 213
    iput-object p1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 4

    .prologue
    .line 228
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 248
    :cond_0
    :goto_0
    return-void

    .line 231
    :cond_1
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v0

    add-int/lit8 v0, v0, 0x1

    .line 232
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$400(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v1

    if-le v0, v1, :cond_2

    .line 233
    sget-object v0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->TAG:Ljava/lang/String;

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v1

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "unexpected index in animation "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Object;

    invoke-static {v0, v1, v2}, Lcom/android/calendarcommon2/LogUtils;->wtf(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)I

    goto :goto_0

    .line 236
    :cond_2
    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # setter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v1, v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$102(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;I)I

    .line 237
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringsLastIndex:I
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$400(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v1

    if-ne v0, v1, :cond_3

    .line 239
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$200(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 240
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInAnimation:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$500(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    .line 241
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 242
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    goto/16 :goto_0

    .line 247
    :cond_3
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mTextFadeInOutAnimation:Landroid/animation/Animator;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$600(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/animation/Animator;

    move-result-object v0

    invoke-virtual {v0}, Landroid/animation/Animator;->start()V

    goto/16 :goto_0
.end method

.method public onAnimationStart(Landroid/animation/Animator;)V
    .locals 3

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .line 217
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    const/4 v1, 0x0

    # setter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v0, v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$102(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;I)I

    .line 219
    :cond_0
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingTextView:Landroid/widget/TextView;
    invoke-static {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$300(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)Landroid/widget/TextView;

    move-result-object v0

    iget-object v1, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStrings:[Ljava/lang/String;
    invoke-static {v1}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$200(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)[Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    # getter for: Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->mLoadingStringIndex:I
    invoke-static {v2}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->access$100(Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;)I

    move-result v2

    aget-object v1, v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 220
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->isAdded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 221
    iget-object v0, p0, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment$2;->this$0:Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;

    invoke-virtual {v0}, Lcom/android/calendar/timely/findatime/ui/FindTime2UiSuggestionFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    const/16 v1, 0x20

    .line 222
    invoke-virtual {v0, v1}, Landroid/view/View;->sendAccessibilityEvent(I)V

    .line 224
    :cond_1
    return-void
.end method

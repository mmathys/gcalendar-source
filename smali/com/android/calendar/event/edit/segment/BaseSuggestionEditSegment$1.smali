.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;
.super Landroid/database/DataSetObserver;
.source "BaseSuggestionEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->initialize(Ljava/lang/Class;Lcom/android/calendar/event/edit/segment/SuggestionEditText;Landroid/widget/ListAdapter;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)V
    .locals 0

    .prologue
    .line 123
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-direct {p0}, Landroid/database/DataSetObserver;-><init>()V

    return-void
.end method


# virtual methods
.method public onChanged()V
    .locals 7

    .prologue
    .line 127
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mSuggestionAdapter:Landroid/widget/ListAdapter;
    invoke-static {v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$000(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-interface {v0}, Landroid/widget/ListAdapter;->getCount()I

    move-result v0

    .line 128
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->getText()Landroid/text/Editable;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 129
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Pair;->create(Ljava/lang/Object;Ljava/lang/Object;)Landroid/util/Pair;

    move-result-object v1

    .line 130
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/util/Pair;

    move-result-object v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    .line 131
    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;
    invoke-static {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$200(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Landroid/util/Pair;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/util/Pair;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 144
    :cond_0
    :goto_0
    return-void

    .line 139
    :cond_1
    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # setter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mLastAnnouncedSuggestionCount:Landroid/util/Pair;
    invoke-static {v2, v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$202(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;Landroid/util/Pair;)Landroid/util/Pair;

    .line 140
    if-lez v0, :cond_0

    .line 141
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    # getter for: Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->mInputField:Lcom/android/calendar/event/edit/segment/SuggestionEditText;
    invoke-static {v1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->access$100(Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;)Lcom/android/calendar/event/edit/segment/SuggestionEditText;

    move-result-object v1

    iget-object v2, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$1;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-virtual {v2}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    sget v3, Lcom/android/calendar/R$plurals;->num_suggestions_accessibility:I

    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    .line 142
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v4, v5

    invoke-virtual {v2, v3, v0, v4}, Landroid/content/res/Resources;->getQuantityString(II[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 141
    invoke-virtual {v1, v0}, Lcom/android/calendar/event/edit/segment/SuggestionEditText;->announceForAccessibility(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

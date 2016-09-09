.class Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$4;
.super Ljava/lang/Object;
.source "BaseSuggestionEditSegment.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->getSuggestionContainer(Landroid/view/ViewGroup;Lcom/android/calendar/editor/EditSegment$OnScrolledChangeListener;)Landroid/view/ViewGroup;
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
    .line 454
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 457
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment$4;->this$0:Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;

    move-object v1, p1

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/calendar/event/edit/segment/BaseSuggestionEditSegment;->onSuggestListItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V

    .line 458
    return-void
.end method

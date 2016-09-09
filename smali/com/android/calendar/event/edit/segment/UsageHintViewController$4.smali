.class Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;
.super Landroid/util/Property;
.source "UsageHintViewController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/calendar/event/edit/segment/UsageHintViewController;->startInplaceHintAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/util/Property",
        "<",
        "Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter",
        "<*>;",
        "Ljava/lang/Float;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;


# direct methods
.method constructor <init>(Lcom/android/calendar/event/edit/segment/UsageHintViewController;Ljava/lang/Class;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 504
    iput-object p1, p0, Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;->this$0:Lcom/android/calendar/event/edit/segment/UsageHintViewController;

    invoke-direct {p0, p2, p3}, Landroid/util/Property;-><init>(Ljava/lang/Class;Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public get(Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;)Ljava/lang/Float;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter",
            "<*>;)",
            "Ljava/lang/Float;"
        }
    .end annotation

    .prologue
    .line 507
    invoke-virtual {p1}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->getHintTranslateOffset()F

    move-result v0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public bridge synthetic get(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 504
    check-cast p1, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;->get(Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;)Ljava/lang/Float;

    move-result-object v0

    return-object v0
.end method

.method public set(Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;Ljava/lang/Float;)V
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter",
            "<*>;",
            "Ljava/lang/Float;",
            ")V"
        }
    .end annotation

    .prologue
    .line 512
    invoke-virtual {p2}, Ljava/lang/Float;->floatValue()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;->setHintTranslateOffset(F)V

    .line 513
    return-void
.end method

.method public bridge synthetic set(Ljava/lang/Object;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 504
    check-cast p1, Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;

    check-cast p2, Ljava/lang/Float;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/UsageHintViewController$4;->set(Lcom/android/calendar/event/edit/segment/BaseSuggestionAdapter;Ljava/lang/Float;)V

    return-void
.end method

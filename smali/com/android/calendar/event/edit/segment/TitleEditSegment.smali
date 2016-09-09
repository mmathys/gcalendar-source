.class public Lcom/android/calendar/event/edit/segment/TitleEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "TitleEditSegment.java"

# interfaces
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/event/data/InputAspectTitle;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/String;",
        ">;"
    }
.end annotation


# instance fields
.field private mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mTitleView:Landroid/widget/EditText;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 41
    const-class v0, Lcom/android/calendar/event/data/InputAspectTitle;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 42
    return-void
.end method

.method static synthetic access$000(Lcom/android/calendar/event/edit/segment/TitleEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 34
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)Z
    .locals 1

    .prologue
    .line 91
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 34
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTitle;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)Z

    move-result v0

    return v0
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Ljava/lang/String;

    invoke-virtual {p0, p1}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->onChange(Ljava/lang/String;)V

    return-void
.end method

.method public onChange(Ljava/lang/String;)V
    .locals 1

    .prologue
    .line 112
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lcom/google/common/base/Objects;->equal(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 113
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 115
    :cond_0
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)V
    .locals 1

    .prologue
    .line 85
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 86
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 87
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTitle;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)V

    return-void
.end method

.method public onFinishInflate()V
    .locals 2

    .prologue
    .line 46
    sget v0, Lcom/android/calendar/R$id;->title:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    .line 48
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    new-instance v1, Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;

    invoke-direct {v1, p0}, Lcom/android/calendar/event/edit/segment/TitleEditSegment$1;-><init>(Lcom/android/calendar/event/edit/segment/TitleEditSegment;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 66
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)V
    .locals 2

    .prologue
    .line 70
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTitle;->mutableTitle()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 71
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 73
    invoke-interface {p2}, Lcom/android/calendar/event/data/InputAspectTitle;->canChangeTitle()Z

    move-result v0

    .line 74
    if-nez v0, :cond_0

    .line 75
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 77
    :cond_0
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 78
    iget-object v1, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleView:Landroid/widget/EditText;

    invoke-virtual {v1, v0}, Landroid/widget/EditText;->setFocusable(Z)V

    .line 80
    iget-object v0, p0, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->mTitleData:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->onChange(Ljava/lang/String;)V

    .line 81
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 34
    check-cast p2, Lcom/android/calendar/event/data/InputAspectTitle;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/event/edit/segment/TitleEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/event/data/InputAspectTitle;)V

    return-void
.end method

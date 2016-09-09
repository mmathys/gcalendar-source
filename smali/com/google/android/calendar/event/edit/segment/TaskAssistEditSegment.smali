.class public Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;
.super Lcom/android/calendar/editor/EditSegment;
.source "TaskAssistEditSegment.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/EditSegment",
        "<",
        "Lcom/android/calendar/event/data/AbstractTaskEditManager;",
        ">;"
    }
.end annotation


# instance fields
.field private mContext:Landroid/content/Context;

.field private mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
            ">;"
        }
    .end annotation
.end field

.field private final mTaskAssistDialogListener:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;

.field private mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

.field private final mTaskAssistanceListener:Lcom/google/calendar/v2/client/service/common/Listener;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/calendar/v2/client/service/common/Listener",
            "<",
            "Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1

    .prologue
    .line 60
    const-class v0, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-direct {p0, p1, p2, v0}, Lcom/android/calendar/editor/EditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;)V

    .line 33
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$1;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistDialogListener:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;

    .line 46
    new-instance v0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;

    invoke-direct {v0, p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$2;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistanceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    .line 61
    iput-object p1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    .line 62
    return-void
.end method

.method static synthetic access$000(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    return-object v0
.end method

.method static synthetic access$100(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Landroid/content/Context;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    return-object v0
.end method

.method static synthetic access$300(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetTaskAssistance()V

    return-void
.end method

.method static synthetic access$400(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;)Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;
    .locals 1

    .prologue
    .line 28
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistDialogListener:Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$TaskAssistDialogListener;

    return-object v0
.end method

.method private onSetTaskAssistance()V
    .locals 9

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    .line 73
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 74
    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;

    invoke-static {v0}, Lcom/google/android/calendar/task/TaskAssistanceUtils;->createTaskAssistHolder(Lcom/google/personalization/assist/annotate/api/nano/TaskAssistance;)Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    .line 75
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_0

    .line 76
    sget v0, Lcom/android/calendar/R$id;->icon:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    .line 77
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    invoke-virtual {v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getIconId()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 78
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getDescription(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 80
    sget v0, Lcom/android/calendar/R$id;->value:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 81
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v2, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getDisplayText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 83
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getSecondaryDisplayText(Landroid/content/Context;)Landroid/text/SpannableString;

    move-result-object v1

    .line 84
    sget v0, Lcom/android/calendar/R$id;->detail:I

    invoke-virtual {p0, v0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 85
    if-eqz v1, :cond_1

    .line 86
    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 87
    invoke-virtual {v0, v7}, Landroid/widget/TextView;->setVisibility(I)V

    .line 94
    :goto_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    sget v1, Lcom/android/calendar/R$string;->remove_assist:I

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v2

    .line 97
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->isClickable(Landroid/content/Context;)Z

    move-result v3

    .line 98
    if-eqz v3, :cond_3

    .line 99
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getAssistActionText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v0

    .line 100
    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v4, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v4}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->getAssistInfoText(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    .line 101
    if-nez v1, :cond_2

    .line 103
    :goto_1
    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/CharSequence;

    aput-object v0, v1, v7

    aput-object v2, v1, v8

    move-object v0, v1

    .line 107
    :goto_2
    new-instance v1, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;

    invoke-direct {v1, p0, v3}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$3;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;Z)V

    .line 117
    new-instance v2, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;

    invoke-direct {v2, p0, v0, v1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment$4;-><init>(Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;[Ljava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    invoke-virtual {p0, v2}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 126
    :cond_0
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->showOrHide()V

    .line 127
    return-void

    .line 89
    :cond_1
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0

    .line 102
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-static {v0}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    add-int/lit8 v5, v5, 0x1

    invoke-static {v1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    add-int/2addr v5, v6

    invoke-direct {v4, v5}, Ljava/lang/StringBuilder;-><init>(I)V

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v4, " "

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    goto :goto_1

    .line 105
    :cond_3
    new-array v0, v8, [Ljava/lang/CharSequence;

    aput-object v2, v0, v7

    goto :goto_2
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z
    .locals 1

    .prologue
    .line 137
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected bridge synthetic canBeChanged(Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 28
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->canBeChanged(Lcom/android/calendar/event/data/AbstractTaskEditManager;)Z

    move-result v0

    return v0
.end method

.method protected onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 131
    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 132
    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    .line 133
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onDisposeInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2

    .prologue
    .line 145
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 146
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->isClickable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 147
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    if-nez v0, :cond_0

    .line 148
    invoke-virtual {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->setToChildrenContentDescription()V

    .line 150
    :cond_0
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 152
    :cond_1
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 2

    .prologue
    .line 159
    invoke-super {p0, p1}, Lcom/android/calendar/editor/EditSegment;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 160
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistHolder:Lcom/google/android/calendar/task/assist/TaskAssistHolder;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mContext:Landroid/content/Context;

    invoke-virtual {v0, v1}, Lcom/google/android/calendar/task/assist/TaskAssistHolder;->isClickable(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 161
    const-class v0, Landroid/widget/Button;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 163
    :cond_0
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V
    .locals 2

    .prologue
    .line 66
    invoke-virtual {p1}, Lcom/android/calendar/event/data/AbstractTaskEditManager;->getModel()Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/calendar/v2/client/service/api/tasks/TaskEdit;->getTask()Lcom/google/calendar/v2/client/service/api/tasks/MutableTask;

    move-result-object v0

    check-cast v0, Lcom/google/android/calendar/task/edit/TimelyMutableTask;

    .line 67
    invoke-virtual {v0}, Lcom/google/android/calendar/task/edit/TimelyMutableTask;->mutableTaskAssistance()Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    move-result-object v0

    iput-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    .line 68
    iget-object v0, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mMutableTaskAssistance:Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;

    iget-object v1, p0, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->mTaskAssistanceListener:Lcom/google/calendar/v2/client/service/common/Listener;

    invoke-interface {v0, v1}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableAtom;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 69
    invoke-direct {p0}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetTaskAssistance()V

    .line 70
    return-void
.end method

.method protected bridge synthetic onSetInput(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 28
    check-cast p1, Lcom/android/calendar/event/data/AbstractTaskEditManager;

    invoke-virtual {p0, p1}, Lcom/google/android/calendar/event/edit/segment/TaskAssistEditSegment;->onSetInput(Lcom/android/calendar/event/data/AbstractTaskEditManager;)V

    return-void
.end method

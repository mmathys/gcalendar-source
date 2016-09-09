.class public Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "SwitchEditSegment.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Lcom/google/calendar/v2/client/service/common/Listener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectSwitch;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/widget/CompoundButton$OnCheckedChangeListener;",
        "Lcom/google/calendar/v2/client/service/common/Listener",
        "<",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field private mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

.field private mSwitchId:I

.field private mSwitchView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 38
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 39
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)Z
    .locals 1

    .prologue
    .line 65
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 30
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)Z

    move-result v0

    return v0
.end method

.method public onChange(Ljava/lang/Boolean;)V
    .locals 2

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/Switch;->setChecked(Z)V

    .line 71
    return-void
.end method

.method public bridge synthetic onChange(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->onChange(Ljava/lang/Boolean;)V

    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 1

    .prologue
    .line 75
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p2}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->set(Z)V

    .line 76
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)V
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->removeListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 60
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 61
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 43
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 45
    sget v0, Lcom/android/calendar/R$id;->switch_switch:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/Switch;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mSwitchView:Landroid/widget/Switch;

    .line 46
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mSwitchView:Landroid/widget/Switch;

    invoke-virtual {v0, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 47
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)V
    .locals 1

    .prologue
    .line 51
    iget v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mSwitchId:I

    invoke-interface {p2, v0}, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;->mutableSwitch(I)Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    move-result-object v0

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0, p0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->addListener(Lcom/google/calendar/v2/client/service/common/Listener;)V

    .line 54
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mMutableSync:Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;

    invoke-interface {v0}, Lcom/google/calendar/v2/client/service/common/ModifiableObservableBoolean;->get()Z

    move-result v0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->onChange(Ljava/lang/Boolean;)V

    .line 55
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 30
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectSwitch;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectSwitch;)V

    return-void
.end method

.method public setSwitchId(I)V
    .locals 0

    .prologue
    .line 79
    iput p1, p0, Lcom/android/calendar/timely/settings/segments/SwitchEditSegment;->mSwitchId:I

    .line 80
    return-void
.end method

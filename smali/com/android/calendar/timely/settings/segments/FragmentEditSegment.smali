.class public Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;
.super Lcom/android/calendar/editor/AspectEditSegment;
.source "FragmentEditSegment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/android/calendar/editor/AspectEditSegment",
        "<",
        "Lcom/android/calendar/timely/settings/data/InputAspectFragment;",
        "Lcom/android/calendar/editor/AspectAdapter;",
        ">;",
        "Landroid/view/View$OnClickListener;"
    }
.end annotation


# instance fields
.field private mLabelButton:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2

    .prologue
    .line 44
    const-class v0, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    const-class v1, Lcom/android/calendar/editor/AspectAdapter;

    invoke-direct {p0, p1, p2, v0, v1}, Lcom/android/calendar/editor/AspectEditSegment;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;Ljava/lang/Class;Ljava/lang/Class;)V

    .line 45
    return-void
.end method


# virtual methods
.method protected canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)Z
    .locals 1

    .prologue
    .line 68
    const/4 v0, 0x1

    return v0
.end method

.method protected bridge synthetic canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)Z
    .locals 1

    .prologue
    .line 37
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->canBeChanged(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)Z

    move-result v0

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-interface {v0}, Lcom/android/calendar/timely/settings/data/InputAspectFragment;->getPreferenceActivity()Landroid/preference/PreferenceActivity;

    move-result-object v0

    .line 77
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-interface {v1}, Lcom/android/calendar/timely/settings/data/InputAspectFragment;->getFragmentClassName()Ljava/lang/String;

    move-result-object v1

    .line 78
    invoke-virtual {p0}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->getAspectValue()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-interface {v3}, Lcom/android/calendar/timely/settings/data/InputAspectFragment;->getFragmentTitleRes()I

    move-result v3

    .line 79
    const/4 v6, 0x0

    move-object v4, v2

    move-object v5, v2

    invoke-virtual/range {v0 .. v6}, Landroid/preference/PreferenceActivity;->startPreferencePanel(Ljava/lang/String;Landroid/os/Bundle;ILjava/lang/CharSequence;Landroid/app/Fragment;I)V

    .line 86
    return-void
.end method

.method protected onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)V
    .locals 0

    .prologue
    .line 64
    return-void
.end method

.method protected bridge synthetic onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->onDisposeInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)V

    return-void
.end method

.method protected onFinishInflate()V
    .locals 1

    .prologue
    .line 49
    invoke-super {p0}, Lcom/android/calendar/editor/AspectEditSegment;->onFinishInflate()V

    .line 51
    sget v0, Lcom/android/calendar/R$id;->fragment_label:I

    invoke-virtual {p0, v0}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->mLabelButton:Landroid/widget/TextView;

    .line 52
    iget-object v0, p0, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->mLabelButton:Landroid/widget/TextView;

    invoke-virtual {v0, p0}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 53
    return-void
.end method

.method protected onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)V
    .locals 0

    .prologue
    .line 59
    return-void
.end method

.method protected bridge synthetic onSetInput(Lcom/android/calendar/editor/AspectAdapter;Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 37
    check-cast p2, Lcom/android/calendar/timely/settings/data/InputAspectFragment;

    invoke-virtual {p0, p1, p2}, Lcom/android/calendar/timely/settings/segments/FragmentEditSegment;->onSetInput(Lcom/android/calendar/editor/AspectAdapter;Lcom/android/calendar/timely/settings/data/InputAspectFragment;)V

    return-void
.end method

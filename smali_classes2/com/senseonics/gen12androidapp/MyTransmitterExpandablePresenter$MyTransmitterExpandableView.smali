.class interface abstract Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter$MyTransmitterExpandableView;
.super Ljava/lang/Object;
.source "MyTransmitterExpandablePresenter.java"

# interfaces
.implements Lcom/senseonics/util/ProgressShowingView;
.implements Lcom/senseonics/view/DialogShowingView;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/senseonics/gen12androidapp/MyTransmitterExpandablePresenter;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x608
    name = "MyTransmitterExpandableView"
.end annotation


# virtual methods
.method public abstract getBluetoothService()Lcom/senseonics/bluetoothle/BluetoothService;
.end method

.method public abstract getViewVisibilityByID(II)I
.end method

.method public abstract refreshRssi(Ljava/lang/String;)V
.end method

.method public abstract refreshViews(ZIILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
.end method

.method public abstract rotateImageViewByDegree(III)V
.end method

.method public abstract setDemoButtonEnable(ZZ)V
.end method

.method public abstract setImageViewWithImage(III)V
.end method

.method public abstract setViewVisibilityByID(III)V
.end method

.method public abstract setupDemoOnClickListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setupFwUpdateListener(Landroid/view/View$OnClickListener;)V
.end method

.method public abstract setupSectionExpandCollapse(IZ)V
.end method

.method public abstract setupTableSectionTapEvent(ILandroid/view/View$OnClickListener;)V
.end method

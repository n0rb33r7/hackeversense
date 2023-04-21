.class Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;
.super Ljava/lang/Object;
.source "NumberPicker.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lnet/simonvt/numberpicker/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Lnet/simonvt/numberpicker/NumberPicker;


# direct methods
.method constructor <init>(Lnet/simonvt/numberpicker/NumberPicker;)V
    .locals 0

    .line 2066
    iput-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    const/4 p1, 0x1

    .line 2070
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->MODE_PRESS:I

    const/4 p1, 0x2

    .line 2071
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 2

    .line 2091
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x1

    .line 2092
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2093
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2094
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v0

    int-to-long v0, v0

    invoke-virtual {p1, p0, v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method

.method public buttonTapped(I)V
    .locals 1

    .line 2098
    invoke-virtual {p0}, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->cancel()V

    const/4 v0, 0x2

    .line 2099
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2100
    iput p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2101
    iget-object p1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {p1, p0}, Lnet/simonvt/numberpicker/NumberPicker;->post(Ljava/lang/Runnable;)Z

    return-void
.end method

.method public cancel()V
    .locals 5

    const/4 v0, 0x0

    .line 2077
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    .line 2078
    iput v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    .line 2079
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1, p0}, Lnet/simonvt/numberpicker/NumberPicker;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2080
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1400(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 2081
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1402(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2082
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v1, v0, v2, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    .line 2084
    :cond_0
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1, v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1602(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2085
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1600(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 2086
    iget-object v1, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v1}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v2

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v3

    invoke-virtual {v1, v0, v0, v2, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    :cond_1
    return-void
.end method

.method public run()V
    .locals 6

    .line 2106
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mMode:I

    const/4 v1, 0x2

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-eq v0, v3, :cond_5

    if-eq v0, v1, :cond_0

    goto/16 :goto_0

    .line 2120
    :cond_0
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_3

    if-eq v0, v1, :cond_1

    goto/16 :goto_0

    .line 2130
    :cond_1
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1600(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_2

    .line 2131
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2132
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2131
    invoke-virtual {v0, p0, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2134
    :cond_2
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1600(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1602(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2135
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2122
    :cond_3
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1400(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 2123
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    .line 2124
    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v4, v1

    .line 2123
    invoke-virtual {v0, p0, v4, v5}, Lnet/simonvt/numberpicker/NumberPicker;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2126
    :cond_4
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1400(Lnet/simonvt/numberpicker/NumberPicker;)Z

    move-result v1

    xor-int/2addr v1, v3

    invoke-static {v0, v1}, Lnet/simonvt/numberpicker/NumberPicker;->access$1402(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2127
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2108
    :cond_5
    iget v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->mManagedButton:I

    if-eq v0, v3, :cond_7

    if-eq v0, v1, :cond_6

    goto :goto_0

    .line 2114
    :cond_6
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1602(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2115
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v0}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v1

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1700(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v3

    invoke-virtual {v0, v2, v2, v1, v3}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    goto :goto_0

    .line 2110
    :cond_7
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0, v3}, Lnet/simonvt/numberpicker/NumberPicker;->access$1402(Lnet/simonvt/numberpicker/NumberPicker;Z)Z

    .line 2111
    iget-object v0, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-static {v0}, Lnet/simonvt/numberpicker/NumberPicker;->access$1500(Lnet/simonvt/numberpicker/NumberPicker;)I

    move-result v1

    iget-object v3, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v3}, Lnet/simonvt/numberpicker/NumberPicker;->getRight()I

    move-result v3

    iget-object v4, p0, Lnet/simonvt/numberpicker/NumberPicker$PressedStateHelper;->this$0:Lnet/simonvt/numberpicker/NumberPicker;

    invoke-virtual {v4}, Lnet/simonvt/numberpicker/NumberPicker;->getBottom()I

    move-result v4

    invoke-virtual {v0, v2, v1, v3, v4}, Lnet/simonvt/numberpicker/NumberPicker;->invalidate(IIII)V

    :goto_0
    return-void
.end method
